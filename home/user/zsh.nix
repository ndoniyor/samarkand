{ config, pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    # initialize p10k
    plugins = [
      {
        name = "powerlevel10k";
        src = pkgs.zsh-powerlevel10k;
        file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
      }
    ];

    initExtra = ''
      if [[ -r "''${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-''${(%):-%n}.zsh" ]]; then
        source "''${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-''${(%):-%n}.zsh"
      fi

      [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
      eval "$(zoxide init zsh)"
    '';

    shellAliases = {
      cd = "z";
      find = "fd";
      grep = "rg";
      ls = "eza";
    };

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "thefuck" ];
    };
  };
  home.file.".p10k.zsh".source = ./config/p10k.zsh;
}
