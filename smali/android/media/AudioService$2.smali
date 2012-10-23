.class Landroid/media/AudioService$2;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .registers 2
    .parameter

    .prologue
    .line 2000
    iput-object p1, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 21
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 2004
    packed-switch p1, :pswitch_data_13c

    .line 2070
    .end local p2
    :cond_3
    :goto_3
    return-void

    .restart local p2
    :pswitch_4
    move-object/from16 v15, p2

    .line 2006
    check-cast v15, Landroid/bluetooth/BluetoothA2dp;

    .line 2007
    .local v15, a2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-virtual {v15}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v16

    .line 2008
    .local v16, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 2009
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 2010
    .local v6, btDevice:Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v8

    monitor-enter v8

    .line 2011
    :try_start_24
    invoke-virtual {v15, v6}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 2012
    .local v4, state:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    const/16 v3, 0x80

    const/4 v1, 0x2

    if-ne v4, v1, :cond_4d

    const/4 v1, 0x1

    :goto_32
    #calls: Landroid/media/AudioService;->checkSendBecomingNoisyIntent(II)I
    invoke-static {v2, v3, v1}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;II)I

    move-result v7

    .line 2015
    .local v7, delay:I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v2}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0x15

    const/4 v5, 0x0

    #calls: Landroid/media/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    invoke-static/range {v1 .. v7}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 2021
    monitor-exit v8

    goto :goto_3

    .end local v4           #state:I
    .end local v7           #delay:I
    :catchall_4a
    move-exception v1

    monitor-exit v8
    :try_end_4c
    .catchall {:try_start_24 .. :try_end_4c} :catchall_4a

    throw v1

    .line 2012
    .restart local v4       #state:I
    :cond_4d
    const/4 v1, 0x0

    goto :goto_32

    .line 2026
    .end local v4           #state:I
    .end local v6           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v15           #a2dp:Landroid/bluetooth/BluetoothA2dp;
    .end local v16           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :pswitch_4f
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 2028
    :try_start_58
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v1}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v1

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 2029
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2
    move-object/from16 v0, p2

    #setter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1, v0}, Landroid/media/AudioService;->access$2502(Landroid/media/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 2030
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v16

    .line 2031
    .restart local v16       #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_eb

    .line 2032
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, v1}, Landroid/media/AudioService;->access$2602(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 2037
    :goto_92
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->checkScoAudioState()V
    invoke-static {v1}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)V

    .line 2039
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_ba

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)I

    move-result v1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_ba

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_e5

    .line 2042
    :cond_ba
    const/16 v17, 0x0

    .line 2043
    .local v17, status:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_d1

    .line 2044
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)I

    move-result v1

    packed-switch v1, :pswitch_data_144

    .line 2059
    :cond_d1
    :goto_d1
    :pswitch_d1
    if-nez v17, :cond_e5

    .line 2060
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v1}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v8

    const/16 v9, 0xb

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v8 .. v14}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2064
    .end local v17           #status:Z
    :cond_e5
    monitor-exit v2

    goto/16 :goto_3

    .end local v16           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_e8
    move-exception v1

    monitor-exit v2
    :try_end_ea
    .catchall {:try_start_58 .. :try_end_ea} :catchall_e8

    throw v1

    .line 2034
    .restart local v16       #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_eb
    :try_start_eb
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1, v3}, Landroid/media/AudioService;->access$2602(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto :goto_92

    .line 2046
    .restart local v17       #status:Z
    :pswitch_f4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x3

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1, v3}, Landroid/media/AudioService;->access$2402(Landroid/media/AudioService;I)I

    .line 2047
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v17

    .line 2049
    goto :goto_d1

    .line 2051
    :pswitch_111
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v17

    .line 2053
    goto :goto_d1

    .line 2055
    :pswitch_126
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_139
    .catchall {:try_start_eb .. :try_end_139} :catchall_e8

    move-result v17

    goto :goto_d1

    .line 2004
    nop

    :pswitch_data_13c
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_4
    .end packed-switch

    .line 2044
    :pswitch_data_144
    .packed-switch 0x1
        :pswitch_f4
        :pswitch_d1
        :pswitch_d1
        :pswitch_126
        :pswitch_111
    .end packed-switch
.end method

.method public onServiceDisconnected(I)V
    .registers 6
    .parameter "profile"

    .prologue
    .line 2072
    packed-switch p1, :pswitch_data_4c

    .line 2091
    :goto_3
    return-void

    .line 2074
    :pswitch_4
    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 2075
    :try_start_b
    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v0

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2076
    iget-object v2, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v0

    const/16 v3, 0x80

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #calls: Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    invoke-static {v2, v0}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;Ljava/lang/String;)V

    .line 2079
    :cond_34
    monitor-exit v1

    goto :goto_3

    :catchall_36
    move-exception v0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_b .. :try_end_38} :catchall_36

    throw v0

    .line 2083
    :pswitch_39
    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 2084
    :try_start_40
    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x0

    #setter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$2502(Landroid/media/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 2085
    monitor-exit v1

    goto :goto_3

    :catchall_48
    move-exception v0

    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_48

    throw v0

    .line 2072
    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_39
        :pswitch_4
    .end packed-switch
.end method
