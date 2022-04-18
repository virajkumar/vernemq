{application,vmq_server,
    [{description,"VerneMQ MQTT Server"},
     {vsn,"1.12.5+build.2355.refe21c474"},
     {registered,[]},
     {applications,
         [kernel,stdlib,lager,cowboy,ranch,os_mon,riak_sysmon,ssl,vmq_commons,
          vmq_ql,vmq_plugin,clique,jsx,gen_server2,stdout_formatter]},
     {mod,{vmq_server_app,[]}},
     {env,
         [{allow_anonymous,true},
          {max_client_id_size,100},
          {retry_interval,20},
          {max_inflight_messages,20},
          {max_message_rate,0},
          {max_message_size,0},
          {upgrade_outgoing_qos,false},
          {allow_register_during_netsplit,false},
          {allow_publish_during_netsplit,false},
          {allow_subscribe_during_netsplit,false},
          {allow_unsubscribe_during_netsplit,false},
          {vmq_config_enabled,true},
          {default_reg_view,vmq_reg_trie},
          {reg_views,[vmq_reg_trie]},
          {queue_sup_sup_children,50},
          {allow_multiple_sessions,false},
          {max_online_messages,30000},
          {max_offline_messages,-1},
          {queue_deliver_mode,fanout},
          {queue_type,fifo},
          {persistent_client_expiration,0},
          {max_last_will_delay,0},
          {max_drain_time,100},
          {max_msgs_per_drain_step,10},
          {max_connections,infinity},
          {nr_of_acceptors,10},
          {listeners,
              [{mqtt,
                   [{{{127,0,0,1},1889},
                     [{max_connections,infinity},
                      {mountpoint,[]},
                      {proxy_protocol,true}]}]},
               {mqtts,[]},
               {mqttws,
                   [{{{127,0,0,1},8080},
                     [{max_connections,1000},
                      {mountpoint,[]},
                      {proxy_protocol,true}]}]},
               {mqttwss,[]},
               {vmq,[{{{0,0,0,0},18884},[]}]},
               {vmqs,[]},
               {http,
                   [{{{127,0,0,1},8888},
                     [{config_mod,vmq_http_config},
                      {config_fun,config},
                      {nr_of_acceptors,10}]}]}]},
          {http_modules,
              [vmq_metrics_http,vmq_http_mgmt_api,vmq_status_http,
               vmq_health_http]},
          {outgoing_clustering_buffer_size,10000},
          {remote_enqueue_timeout,5000},
          {outgoing_connect_opts,[]},
          {outgoing_connect_params_module,vmq_cluster_node},
          {outgoing_connect_timeout,10000},
          {shared_subscription_policy,prefer_local},
          {shared_subscription_timeout_action,ignore},
          {tcp_listen_options,
              [{nodelay,true},
               {linger,{true,0}},
               {send_timeout,30000},
               {send_timeout_close,true}]},
          {graphite_enabled,false},
          {systree_enabled,true}]},
     {modules,
         [vmq_auth,vmq_cli_human_writer,vmq_cli_json_writer,vmq_cluster,
          vmq_cluster_com,vmq_cluster_mon,vmq_cluster_node,
          vmq_cluster_node_sup,vmq_config,vmq_config_cli,vmq_cowboy_websocket,
          vmq_cowboy_websocket_h,vmq_crl_srv,vmq_graphite,vmq_health_http,
          vmq_http_config,vmq_http_mgmt_api,vmq_info,vmq_info_cli,
          vmq_listener_cli,vmq_message_store,vmq_metadata,vmq_metrics,
          vmq_metrics_http,vmq_metrics_sup,vmq_mqtt5_fsm,vmq_mqtt_fsm,
          vmq_mqtt_fsm_util,vmq_mqtt_pre_init,vmq_peer_service,
          vmq_plugin_compat_m5,vmq_queue,vmq_queue_sup,vmq_queue_sup_sup,
          vmq_ranch,vmq_ranch_config,vmq_ranch_sup,vmq_reg,vmq_reg_mgr,
          vmq_reg_sup,vmq_reg_sync,vmq_reg_sync_action,
          vmq_reg_sync_action_sup,vmq_reg_trie,vmq_reg_view,vmq_retain_info,
          vmq_retain_srv,vmq_schema,vmq_server,vmq_server_app,vmq_server_cli,
          vmq_server_cmd,vmq_server_sup,vmq_shared_subscriptions,vmq_ssl,
          vmq_status_http,vmq_subscriber,vmq_subscriber_db,vmq_sysmon,
          vmq_sysmon_handler,vmq_systree,vmq_time,vmq_tracer,vmq_tracer_cli,
          vmq_updo,vmq_websocket]}]}.