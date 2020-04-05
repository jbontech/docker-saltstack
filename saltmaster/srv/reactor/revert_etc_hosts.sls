revert_etc_hosts:
  local.state.sls:
    - tgt: {{ data['id'] }}
    - arg: 
      - formula.etc_hosts
