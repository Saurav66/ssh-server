# ssh-command-action

Action to run a command on a remote server via ssh

## Usage

```yaml
uses: saurav66/ssh-server@main
with:
  host: ${{secrets.HOST}} # Remote server address / ip - required
  port: ${{secrets.PORT}} # Remote server port -  Default: 22 - optional
  user: ${{secrets.USER}} # Remote server user - required
  private_key: ${{secrets.PRIVATE_KEY}} # Private ssh key registered on the remote server - required
  command: echo 'hello world' # Command to be executed - Default: echo 'hello world' - optional
```
