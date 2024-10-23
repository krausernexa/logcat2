.class public Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;
.super Ljava/lang/Object;
.source "Alpha2SerialServiceUtil.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil$Alpha2SerialPortRcvClientImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Alpha2SerialServiceUtil"

.field static mCommonInstance:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;


# instance fields
.field private mCallIntent:Landroid/content/Intent;

.field private mCientListener:Lcom/ubtechinc/alpha2serverlib/interfaces/Alpha2SerialPortOnRcvListener;

.field private mContext:Landroid/content/Context;

.field private mRcvListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortRcvClient$Stub;

.field private mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortService;

.field private mSessionID:B


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ubtechinc/alpha2serverlib/interfaces/Alpha2SerialPortOnRcvListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/ubtechinc/alpha2serverlib/interfaces/Alpha2SerialPortOnRcvListener;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;->mContext:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;->mCientListener:Lcom/ubtechinc/alpha2serverlib/interfaces/Alpha2SerialPortOnRcvListener;

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ubtechinc.services.AlphaSerialPortServices"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;->mCallIntent:Landroid/content/Intent;

    .line 119
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;->mCallIntent:Landroid/content/Intent;

    const-string v1, "com.ubtechinc.alpha2services"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    new-instance v0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil$Alpha2SerialPortRcvClientImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil$Alpha2SerialPortRcvClientImpl;-><init>(Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil$1;)V

    iput-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;->mRcvListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortRcvClient$Stub;

    .line 124
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;->mCallIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 126
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;->waitForInitComplete()V

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;)Lcom/ubtechinc/alpha2serverlib/interfaces/Alpha2SerialPortOnRcvListener;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;->mCientListener:Lcom/ubtechinc/alpha2serverlib/interfaces/Alpha2SerialPortOnRcvListener;

    return-object v0
.end method

.method public static getCommonInstance()Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;->mCommonInstance:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;

    return-object v0
.end method

.method public static initCommonInstance(Landroid/content/Context;Lcom/ubtechinc/alpha2serverlib/interfaces/Alpha2SerialPortOnRcvListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/ubtechinc/alpha2serverlib/interfaces/Alpha2SerialPortOnRcvListener;

    .prologue
    .line 66
    new-instance v0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;

    invoke-direct {v0, p0, p1}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;-><init>(Landroid/content/Context;Lcom/ubtechinc/alpha2serverlib/interfaces/Alpha2SerialPortOnRcvListener;)V

    sput-object v0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;->mCommonInstance:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;

    .line 67
    return-void
.end method

.method public static releaseCommonInstance()V
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;->mCommonInstance:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;->mCommonInstance:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;

    invoke-virtual {v0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;->ReleaseConnection()Z

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;->mCommonInstance:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;

    .line 78
    :cond_0
    return-void
.end method


# virtual methods
.method public ReleaseConnection()Z
    .locals 3

    .prologue
    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortService;

    iget-object v2, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;->mRcvListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortRcvClient$Stub;

    invoke-interface {v1, v2}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortService;->unRegisterSerialPortRcvListener(Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortRcvClient;)I

    .line 199
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 200
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isInitCompleted()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 213
    const-string v1, "Alpha2SerialServiceUtil"

    const-string v2, "onServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-static {p2}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortService;

    move-result-object v1

    iput-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortService;

    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortService;

    iget-object v2, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;->mRcvListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortRcvClient$Stub;

    .line 218
    invoke-interface {v1, v2}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortService;->registerSerialPortRcvListener(Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortRcvClient;)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;->mSessionID:B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 230
    const-string v1, "Alpha2SerialServiceUtil"

    const-string v2, "onServiceDisconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortService;

    iget-object v2, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;->mRcvListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortRcvClient$Stub;

    invoke-interface {v1, v2}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortService;->unRegisterSerialPortRcvListener(Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortRcvClient;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 236
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
    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortService;

    iget-byte v2, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;->mSessionID:B

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortService;->sendCommand(BB[BI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 176
    :goto_0
    return v1

    .line 169
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 176
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 172
    :catch_1
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public sendRawData([BI)Z
    .locals 2
    .param p1, "datas"    # [B
    .param p2, "nLen"    # I

    .prologue
    .line 184
    :try_start_0
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortService;

    invoke-interface {v1, p1, p2}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortService;->sendRawData([BI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 190
    :goto_0
    return v1

    .line 185
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 190
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public waitForInitComplete()V
    .locals 4

    .prologue
    .line 142
    const/16 v0, 0x12c

    .line 143
    .local v0, "nTimes":I
    :goto_0
    if-lez v0, :cond_0

    .line 144
    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 145
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;->isInitCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    :cond_0
    return-void

    .line 149
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
