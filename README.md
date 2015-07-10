# jacoelho.elixir

[Ansible](http://www.ansible.com/) role: install erlang and elixir from the erlang repositories

### Usage
```yaml
  roles:
    - role: jacoelho.elixir
```

### Configuration

```yaml
elixir_erlang_version
elixir_version
```

for example:

```yaml
elixir_erlang_version: "17.5"
elixir_version: "1.0.5"
```

[![Build Status](https://travis-ci.org/jacoelho/ansible-elixir.svg?branch=master)](https://travis-ci.org/jacoelho/ansible-elixir)
