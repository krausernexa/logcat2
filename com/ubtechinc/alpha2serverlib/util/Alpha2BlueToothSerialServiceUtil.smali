.class public Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;
.super Ljava/lang/Object;
.source "Alpha2BlueToothSerialServiceUtil.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil$Alpha2SerialPortRcvClientImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Alpha2BlueToothSerialServiceUtil"

.field private static mCommonInstance:Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;


# instance fields
.field private mCallIntent:Landroid/content/Intent;

.field private mCientListener:Lcom/ubtechinc/alpha2serverlib/interfaces/Alpha2SerialPortOnRcvListener;

.field private mContext:Landroid/content/Context;

.field private mRcvListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortRcvClient$Stub;

.field private mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2BlueToothSerialPortService;

.field private mSessionID:B


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ubtechinc/alpha2serverlib/interfaces/Alpha2SerialPortOnRcvListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/ubtechinc/alpha2serverlib/interfaces/Alpha2SerialPortOnRcvListener;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;->mContext:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;->mCientListener:Lcom/ubtechinc/alpha2serverlib/interfaces/Alpha2SerialPortOnRcvListener;

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ubtechinc.services.AlphaBlueToothSerialPortServices"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;->mCallIntent:Landroid/content/Intent;

    .line 103
    new-instance v0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil$Alpha2SerialPortRcvClientImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil$Alpha2SerialPortRcvClientImpl;-><init>(Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil$1;)V

    iput-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;->mRcvListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortRcvClient$Stub;

    .line 105
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;->mCallIntent:Landroid/content/Intent;

    const-string v1, "com.ubtechinc.alpha2services"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;->mCallIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;)Lcom/ubtechinc/alpha2serverlib/interfaces/Alpha2SerialPortOnRcvListener;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;->mCientListener:Lcom/ubtechinc/alpha2serverlib/interfaces/Alpha2SerialPortOnRcvListener;

    return-object v0
.end method

.method public static getCommonInstance()Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;->mCommonInstance:Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;

    return-object v0
.end method

.method public static initCommonInstance(Landroid/content/Context;Lcom/ubtechinc/alpha2serverlib/interfaces/Alpha2SerialPortOnRcvListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/ubtechinc/alpha2serverlib/interfaces/Alpha2SerialPortOnRcvListener;

    .prologue
    .line 70
    new-instance v0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;

    invoke-direct {v0, p0, p1}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;-><init>(Landroid/content/Context;Lcom/ubtechinc/alpha2serverlib/interfaces/Alpha2SerialPortOnRcvListener;)V

    sput-object v0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;->mCommonInstance:Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;

    .line 72
    return-void
.end method

.method public static releaseCommonInstance()V
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;->mCommonInstance:Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;->mCommonInstance:Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;

    invoke-virtual {v0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;->ReleaseConnection()Z

    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;->mCommonInstance:Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;

    .line 79
    :cond_0
    return-void
.end method


# virtual methods
.method public ReleaseConnection()Z
    .locals 3

    .prologue
    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2BlueToothSerialPortService;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2BlueToothSerialPortService;

    iget-object v2, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;->mRcvListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortRcvClient$Stub;

    invoke-interface {v1, v2}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2BlueToothSerialPortService;->unRegisterSerialPortRcvListener(Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortRcvClient;)I

    .line 156
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 159
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 169
    const-string v1, "Alpha2BlueToothSerialServiceUtil"

    const-string v2, "onServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {p2}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2BlueToothSerialPortService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2BlueToothSerialPortService;

    move-result-object v1

    iput-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2BlueToothSerialPortService;

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2BlueToothSerialPortService;

    iget-object v2, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;->mRcvListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortRcvClient$Stub;

    .line 174
    invoke-interface {v1, v2}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2BlueToothSerialPortService;->registerSerialPortRcvListener(Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortRcvClient;)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;->mSessionID:B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 183
    const-string v1, "Alpha2BlueToothSerialServiceUtil"

    const-string v2, "onServiceDisconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2BlueToothSerialPortService;

    iget-object v2, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;->mRcvListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortRcvClient$Stub;

    invoke-interface {v1, v2}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2BlueToothSerialPortService;->unRegisterSerialPortRcvListener(Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortRcvClient;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendATCMD(Ljava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2BlueToothSerialPortService;

    invoke-interface {v1, p1}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2BlueToothSerialPortService;->sendATCMD(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendCommand(B[BI)Z
    .locals 3
    .param p1, "nCmd"    # B
    .param p2, "nParam"    # [B
    .param p3, "nLen"    # I

    .prologue
    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2BlueToothSerialPortService;

    iget-byte v2, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2BlueToothSerialServiceUtil;->mSessionID:B

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2BlueToothSerialPortService;->sendCommand(BB[BI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 130
    :goto_0
    return v1

    .line 125
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 130
    const/4 v1, 0x1

    goto :goto_0
.end method
