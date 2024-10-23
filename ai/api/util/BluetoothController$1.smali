.class Lai/api/util/BluetoothController$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/api/util/BluetoothController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lai/api/util/BluetoothController;


# direct methods
.method constructor <init>(Lai/api/util/BluetoothController;)V
    .locals 0
    .param p1, "this$0"    # Lai/api/util/BluetoothController;

    .prologue
    .line 156
    iput-object p1, p0, Lai/api/util/BluetoothController$1;->this$0:Lai/api/util/BluetoothController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 160
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 163
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 164
    .local v3, "mConnectedHeadset":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    .line 165
    .local v1, "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    if-eqz v1, :cond_1

    .line 168
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    .line 169
    .local v2, "deviceClass":I
    const/16 v5, 0x408

    if-eq v2, v5, :cond_0

    const/16 v5, 0x404

    if-ne v2, v5, :cond_1

    .line 175
    :cond_0
    iget-object v5, p0, Lai/api/util/BluetoothController$1;->this$0:Lai/api/util/BluetoothController;

    invoke-static {v5}, Lai/api/util/BluetoothController;->access$000(Lai/api/util/BluetoothController;)Landroid/media/AudioManager;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->setMode(I)V

    .line 176
    iget-object v5, p0, Lai/api/util/BluetoothController$1;->this$0:Lai/api/util/BluetoothController;

    invoke-static {v5, v8}, Lai/api/util/BluetoothController;->access$102(Lai/api/util/BluetoothController;Z)Z

    .line 177
    iget-object v5, p0, Lai/api/util/BluetoothController$1;->this$0:Lai/api/util/BluetoothController;

    invoke-static {v5}, Lai/api/util/BluetoothController;->access$200(Lai/api/util/BluetoothController;)Landroid/os/CountDownTimer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 180
    iget-object v5, p0, Lai/api/util/BluetoothController$1;->this$0:Lai/api/util/BluetoothController;

    invoke-virtual {v5}, Lai/api/util/BluetoothController;->onHeadsetConnected()V

    .line 184
    .end local v2    # "deviceClass":I
    :cond_1
    const-string v5, "BluetoothController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " connected"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .end local v1    # "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    .end local v3    # "mConnectedHeadset":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    :goto_0
    return-void

    .line 185
    :cond_3
    const-string v5, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 186
    const-string v5, "BluetoothController"

    const-string v6, "Headset disconnected"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v5, p0, Lai/api/util/BluetoothController$1;->this$0:Lai/api/util/BluetoothController;

    invoke-static {v5}, Lai/api/util/BluetoothController;->access$100(Lai/api/util/BluetoothController;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 189
    iget-object v5, p0, Lai/api/util/BluetoothController$1;->this$0:Lai/api/util/BluetoothController;

    invoke-static {v5, v7}, Lai/api/util/BluetoothController;->access$102(Lai/api/util/BluetoothController;Z)Z

    .line 190
    iget-object v5, p0, Lai/api/util/BluetoothController$1;->this$0:Lai/api/util/BluetoothController;

    invoke-static {v5}, Lai/api/util/BluetoothController;->access$200(Lai/api/util/BluetoothController;)Landroid/os/CountDownTimer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/CountDownTimer;->cancel()V

    .line 193
    :cond_4
    iget-object v5, p0, Lai/api/util/BluetoothController$1;->this$0:Lai/api/util/BluetoothController;

    invoke-static {v5}, Lai/api/util/BluetoothController;->access$000(Lai/api/util/BluetoothController;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/media/AudioManager;->setMode(I)V

    .line 196
    iget-object v5, p0, Lai/api/util/BluetoothController$1;->this$0:Lai/api/util/BluetoothController;

    invoke-virtual {v5}, Lai/api/util/BluetoothController;->onHeadsetDisconnected()V

    goto :goto_0

    .line 197
    :cond_5
    const-string v5, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 198
    const-string v5, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 201
    .local v4, "state":I
    if-ne v4, v8, :cond_8

    .line 202
    iget-object v5, p0, Lai/api/util/BluetoothController$1;->this$0:Lai/api/util/BluetoothController;

    invoke-static {v5, v8}, Lai/api/util/BluetoothController;->access$302(Lai/api/util/BluetoothController;Z)Z

    .line 204
    iget-object v5, p0, Lai/api/util/BluetoothController$1;->this$0:Lai/api/util/BluetoothController;

    invoke-static {v5}, Lai/api/util/BluetoothController;->access$400(Lai/api/util/BluetoothController;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 207
    iget-object v5, p0, Lai/api/util/BluetoothController$1;->this$0:Lai/api/util/BluetoothController;

    invoke-static {v5, v7}, Lai/api/util/BluetoothController;->access$402(Lai/api/util/BluetoothController;Z)Z

    .line 208
    iget-object v5, p0, Lai/api/util/BluetoothController$1;->this$0:Lai/api/util/BluetoothController;

    invoke-virtual {v5}, Lai/api/util/BluetoothController;->onHeadsetConnected()V

    .line 211
    :cond_6
    iget-object v5, p0, Lai/api/util/BluetoothController$1;->this$0:Lai/api/util/BluetoothController;

    invoke-static {v5}, Lai/api/util/BluetoothController;->access$100(Lai/api/util/BluetoothController;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 212
    iget-object v5, p0, Lai/api/util/BluetoothController$1;->this$0:Lai/api/util/BluetoothController;

    invoke-static {v5, v7}, Lai/api/util/BluetoothController;->access$102(Lai/api/util/BluetoothController;Z)Z

    .line 213
    iget-object v5, p0, Lai/api/util/BluetoothController$1;->this$0:Lai/api/util/BluetoothController;

    invoke-static {v5}, Lai/api/util/BluetoothController;->access$200(Lai/api/util/BluetoothController;)Landroid/os/CountDownTimer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/CountDownTimer;->cancel()V

    .line 217
    :cond_7
    iget-object v5, p0, Lai/api/util/BluetoothController$1;->this$0:Lai/api/util/BluetoothController;

    invoke-virtual {v5}, Lai/api/util/BluetoothController;->onScoAudioConnected()V

    .line 219
    const-string v5, "BluetoothController"

    const-string v6, "Sco connected"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 220
    :cond_8
    if-nez v4, :cond_2

    .line 221
    const-string v5, "BluetoothController"

    const-string v6, "Sco disconnected"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v5, p0, Lai/api/util/BluetoothController$1;->this$0:Lai/api/util/BluetoothController;

    invoke-static {v5}, Lai/api/util/BluetoothController;->access$400(Lai/api/util/BluetoothController;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 226
    iget-object v5, p0, Lai/api/util/BluetoothController$1;->this$0:Lai/api/util/BluetoothController;

    invoke-static {v5, v7}, Lai/api/util/BluetoothController;->access$302(Lai/api/util/BluetoothController;Z)Z

    .line 230
    iget-object v5, p0, Lai/api/util/BluetoothController$1;->this$0:Lai/api/util/BluetoothController;

    invoke-static {v5}, Lai/api/util/BluetoothController;->access$000(Lai/api/util/BluetoothController;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 233
    iget-object v5, p0, Lai/api/util/BluetoothController$1;->this$0:Lai/api/util/BluetoothController;

    invoke-virtual {v5}, Lai/api/util/BluetoothController;->onScoAudioDisconnected()V

    goto/16 :goto_0
.end method
