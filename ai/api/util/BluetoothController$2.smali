.class Lai/api/util/BluetoothController$2;
.super Landroid/os/CountDownTimer;
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
.method constructor <init>(Lai/api/util/BluetoothController;JJ)V
    .locals 0
    .param p1, "this$0"    # Lai/api/util/BluetoothController;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 243
    iput-object p1, p0, Lai/api/util/BluetoothController$2;->this$0:Lai/api/util/BluetoothController;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 262
    iget-object v0, p0, Lai/api/util/BluetoothController$2;->this$0:Lai/api/util/BluetoothController;

    invoke-static {v0, v1}, Lai/api/util/BluetoothController;->access$102(Lai/api/util/BluetoothController;Z)Z

    .line 263
    iget-object v0, p0, Lai/api/util/BluetoothController$2;->this$0:Lai/api/util/BluetoothController;

    invoke-static {v0}, Lai/api/util/BluetoothController;->access$000(Lai/api/util/BluetoothController;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 265
    const-string v0, "BluetoothController"

    const-string v1, "\nonFinish fail to connect to headset audio"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void
.end method

.method public onTick(J)V
    .locals 2
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 250
    :try_start_0
    iget-object v0, p0, Lai/api/util/BluetoothController$2;->this$0:Lai/api/util/BluetoothController;

    invoke-static {v0}, Lai/api/util/BluetoothController;->access$000(Lai/api/util/BluetoothController;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    const-string v0, "BluetoothController"

    const-string v1, "\nonTick start bluetooth Sco"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void

    .line 251
    :catch_0
    move-exception v0

    goto :goto_0
.end method
