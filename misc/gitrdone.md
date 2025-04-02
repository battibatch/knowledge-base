# gitrdone Function

## ~/.bash_aliases

```
gitrdone() {
  git add . && git commit -m "${1}" && git push
}`
```

## ~/.zshrc

```
alias gitrdone='f() { git add . && git commit -m $1 && git push };f'
```