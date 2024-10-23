.class public abstract Lai/api/util/BluetoothController;
.super Ljava/lang/Object;
.source "BluetoothController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothController"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCountDown:Landroid/os/CountDownTimer;

.field private mIsCountDownOn:Z

.field private mIsOnHeadsetSco:Z

.field private mIsStarted:Z

.field private mIsStarting:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v0, Lai/api/util/BluetoothController$1;

    invoke-direct {v0, p0}, Lai/api/util/BluetoothController$1;-><init>(Lai/api/util/BluetoothController;)V

    iput-object v0, p0, Lai/api/util/BluetoothController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 243
    new-instance v0, Lai/api/util/BluetoothController$2;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lai/api/util/BluetoothController$2;-><init>(Lai/api/util/BluetoothController;JJ)V

    iput-object v0, p0, Lai/api/util/BluetoothController;->mCountDown:Landroid/os/CountDownTimer;

    .line 34
    iput-object p1, p0, Lai/api/util/BluetoothController;->mContext:Landroid/content/Context;

    .line 35
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lai/api/util/BluetoothController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 36
    iget-object v0, p0, Lai/api/util/BluetoothController;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lai/api/util/BluetoothController;->mAudioManager:Landroid/media/AudioManager;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lai/api/util/BluetoothController;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lai/api/util/BluetoothController;

    .prologue
    .line 14
    iget-object v0, p0, Lai/api/util/BluetoothController;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$100(Lai/api/util/BluetoothController;)Z
    .locals 1
    .param p0, "x0"    # Lai/api/util/BluetoothController;

    .prologue
    .line 14
    iget-boolean v0, p0, Lai/api/util/BluetoothController;->mIsCountDownOn:Z

    return v0
.end method

.method static synthetic access$102(Lai/api/util/BluetoothController;Z)Z
    .locals 0
    .param p0, "x0"    # Lai/api/util/BluetoothController;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lai/api/util/BluetoothController;->mIsCountDownOn:Z

    return p1
.end method

.method static synthetic access$200(Lai/api/util/BluetoothController;)Landroid/os/CountDownTimer;
    .locals 1
    .param p0, "x0"    # Lai/api/util/BluetoothController;

    .prologue
    .line 14
    iget-object v0, p0, Lai/api/util/BluetoothController;->mCountDown:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$302(Lai/api/util/BluetoothController;Z)Z
    .locals 0
    .param p0, "x0"    # Lai/api/util/BluetoothController;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lai/api/util/BluetoothController;->mIsOnHeadsetSco:Z

    return p1
.end method

.method static synthetic access$400(Lai/api/util/BluetoothController;)Z
    .locals 1
    .param p0, "x0"    # Lai/api/util/BluetoothController;

    .prologue
    .line 14
    iget-boolean v0, p0, Lai/api/util/BluetoothController;->mIsStarting:Z

    return v0
.end method

.method static synthetic access$402(Lai/api/util/BluetoothController;Z)Z
    .locals 0
    .param p0, "x0"    # Lai/api/util/BluetoothController;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lai/api/util/BluetoothController;->mIsStarting:Z

    return p1
.end method

.method private startBluetooth()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 105
    const-string v1, "BluetoothController"

    const-string v2, "startBluetooth"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v1, p0, Lai/api/util/BluetoothController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lai/api/util/BluetoothController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lai/api/util/BluetoothController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lai/api/util/BluetoothController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lai/api/util/BluetoothController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lai/api/util/BluetoothController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lai/api/util/BluetoothController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lai/api/util/BluetoothController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    iget-object v1, p0, Lai/api/util/BluetoothController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 120
    iput-boolean v0, p0, Lai/api/util/BluetoothController;->mIsCountDownOn:Z

    .line 122
    iget-object v1, p0, Lai/api/util/BluetoothController;->mCountDown:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 125
    iput-boolean v0, p0, Lai/api/util/BluetoothController;->mIsStarting:Z

    .line 131
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopBluetooth()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 139
    const-string v0, "BluetoothController"

    const-string v1, "stopBluetooth"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-boolean v0, p0, Lai/api/util/BluetoothController;->mIsCountDownOn:Z

    if-eqz v0, :cond_0

    .line 142
    iput-boolean v2, p0, Lai/api/util/BluetoothController;->mIsCountDownOn:Z

    .line 143
    iget-object v0, p0, Lai/api/util/BluetoothController;->mCountDown:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 148
    :cond_0
    iget-object v0, p0, Lai/api/util/BluetoothController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lai/api/util/BluetoothController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 149
    iget-object v0, p0, Lai/api/util/BluetoothController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 150
    iget-object v0, p0, Lai/api/util/BluetoothController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 151
    return-void
.end method


# virtual methods
.method public isOnHeadsetSco()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lai/api/util/BluetoothController;->mIsOnHeadsetSco:Z

    return v0
.end method

.method public abstract onHeadsetConnected()V
.end method

.method public abstract onHeadsetDisconnected()V
.end method

.method public abstract onScoAudioConnected()V
.end method

.method public abstract onScoAudioDisconnected()V
.end method

.method public start()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lai/api/util/BluetoothController;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lai/api/util/BluetoothController;->mIsStarted:Z

    .line 48
    invoke-direct {p0}, Lai/api/util/BluetoothController;->startBluetooth()Z

    move-result v0

    iput-boolean v0, p0, Lai/api/util/BluetoothController;->mIsStarted:Z

    .line 51
    :cond_0
    iget-boolean v0, p0, Lai/api/util/BluetoothController;->mIsStarted:Z

    return v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lai/api/util/BluetoothController;->mIsStarted:Z

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lai/api/util/BluetoothController;->mIsStarted:Z

    .line 63
    invoke-direct {p0}, Lai/api/util/BluetoothController;->stopBluetooth()V

    .line 65
    :cond_0
    return-void
.end method
