.class public Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;
.super Ljava/lang/Object;
.source "AlphaActonServiceUtil.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/ubtechinc/alpha2serverlib/interfaces/Alpha2SerialPortOnRcvListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$AlphaActionListListener;,
        Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$AlphaActionClienImpl;,
        Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$DetectCompletedThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AlphaActonServiceUtil"

.field private static mEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;


# instance fields
.field private mActionClient:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionClient$Stub;

.field private mActionListener:Lcom/ubtechinc/alpha2serverlib/interfaces/AlphaActionClientListener;

.field private mClientListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionClient;

.field private mContext:Landroid/content/Context;

.field private mDetectThread:Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$DetectCompletedThread;

.field private mIAlpha2ActionListListener:Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2ActionListListener;

.field private mIsClosePowerAfterCompleted:Z

.field private mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionClient;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "client"    # Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionClient;

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mContext:Landroid/content/Context;

    .line 180
    iput-object p2, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mClientListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionClient;

    .line 181
    new-instance v1, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$AlphaActionClienImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$AlphaActionClienImpl;-><init>(Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$1;)V

    iput-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mActionClient:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionClient$Stub;

    .line 183
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ubtechinc.services.AlphaActionServices"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, "ServeiceIntent":Landroid/content/Intent;
    const-string v1, "com.ubtechinc.alpha2services"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 192
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ubtechinc/alpha2serverlib/interfaces/AlphaActionClientListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/ubtechinc/alpha2serverlib/interfaces/AlphaActionClientListener;

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p1, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mContext:Landroid/content/Context;

    .line 197
    iput-object p2, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mActionListener:Lcom/ubtechinc/alpha2serverlib/interfaces/AlphaActionClientListener;

    .line 198
    new-instance v1, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$AlphaActionClienImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$AlphaActionClienImpl;-><init>(Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$1;)V

    iput-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mActionClient:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionClient$Stub;

    .line 200
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ubtechinc.services.AlphaActionServices"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, "ServeiceIntent":Landroid/content/Intent;
    const-string v1, "com.ubtechinc.alpha2services"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 209
    return-void
.end method

.method static synthetic access$000(Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mIsClosePowerAfterCompleted:Z

    return v0
.end method

.method static synthetic access$200()Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;)Lcom/ubtechinc/alpha2serverlib/interfaces/AlphaActionClientListener;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mActionListener:Lcom/ubtechinc/alpha2serverlib/interfaces/AlphaActionClientListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionClient;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mClientListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionClient;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;)Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2ActionListListener;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mIAlpha2ActionListListener:Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2ActionListListener;

    return-object v0
.end method


# virtual methods
.method public ReleaseConnection()Z
    .locals 3

    .prologue
    .line 387
    :try_start_0
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService;

    iget-object v2, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mActionClient:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionClient$Stub;

    invoke-interface {v1, v2}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService;->unRegisterActionClient(Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionClient;)V

    .line 388
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 389
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public disableActionPlay(Z)V
    .locals 2
    .param p1, "isDisable"    # Z

    .prologue
    .line 441
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService;

    if-nez v1, :cond_0

    .line 449
    :goto_0
    return-void

    .line 445
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService;

    invoke-interface {v1, p1}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService;->disableActionPlay(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getActionList(Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2ActionListListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2ActionListListener;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mIAlpha2ActionListListener:Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2ActionListListener;

    .line 376
    :try_start_0
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService;

    new-instance v2, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$AlphaActionListListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$AlphaActionListListener;-><init>(Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$1;)V

    invoke-interface {v1, v2}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService;->getActionList(Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionListListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_0
    return-void

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isCompleted()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 297
    iget-object v2, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService;

    if-nez v2, :cond_0

    .line 303
    :goto_0
    return v1

    .line 301
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService;

    invoke-interface {v2}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService;->isCompleted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public ismIsClosePowerAfterCompleted()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mIsClosePowerAfterCompleted:Z

    return v0
.end method

.method public onEventHandlerTrigger(I[B)V
    .locals 2
    .param p1, "nEventType"    # I
    .param p2, "param"    # [B

    .prologue
    .line 314
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService;

    if-nez v1, :cond_0

    .line 323
    :goto_0
    return-void

    .line 318
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService;

    invoke-interface {v1, p1, p2}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService;->onEventHandlerTrigger(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onListenSerialPortRcvData([BI)V
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "len"    # I

    .prologue
    .line 433
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 401
    const-string v1, "AlphaActonServiceUtil"

    const-string v2, "onServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-static {p2}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService;

    move-result-object v1

    iput-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService;

    .line 404
    :try_start_0
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService;

    iget-object v2, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mActionClient:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionClient$Stub;

    invoke-interface {v1, v2}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService;->registerActionClient(Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionClient;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :goto_0
    return-void

    .line 405
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 415
    const-string v1, "AlphaActonServiceUtil"

    const-string v2, "onServiceDisconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :try_start_0
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService;

    iget-object v2, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mActionClient:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionClient$Stub;

    invoke-interface {v1, v2}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService;->unRegisterActionClient(Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionClient;)V

    .line 419
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :goto_0
    return-void

    .line 420
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public playActionFile(Ljava/lang/String;Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;)Z
    .locals 4
    .param p1, "strActionFile"    # Ljava/lang/String;
    .param p2, "event"    # Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    .prologue
    const/4 v1, 0x0

    .line 258
    sput-object p2, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    .line 259
    iget-object v2, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService;

    if-nez v2, :cond_1

    .line 260
    sget-object v2, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    if-eqz v2, :cond_0

    .line 261
    sget-object v2, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    invoke-virtual {v2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->stop()V

    .line 288
    :cond_0
    :goto_0
    return v1

    .line 265
    :cond_1
    iget-object v2, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/ubtechinc/StateManager;->isPower(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "\u5750\u4e0b.ubx"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 266
    const-string v2, ""

    const-string v3, "!!! isPower"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    sget-object v2, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    if-eqz v2, :cond_0

    .line 268
    sget-object v2, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    invoke-virtual {v2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->stop()V

    goto :goto_0

    .line 272
    :cond_2
    invoke-virtual {p0, v1}, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->setmIsClosePowerAfterCompleted(Z)V

    .line 280
    const-string v2, ""

    const-string v3, "!!! mService.playActionFile"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :try_start_0
    iget-object v2, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService;

    invoke-interface {v2, p1}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService;->playActionFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public playActionName(Ljava/lang/String;Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;)Z
    .locals 3
    .param p1, "strActionName"    # Ljava/lang/String;
    .param p2, "event"    # Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    .prologue
    const/4 v1, 0x0

    .line 219
    sput-object p2, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    .line 220
    iget-object v2, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService;

    if-nez v2, :cond_1

    .line 221
    sget-object v2, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    if-eqz v2, :cond_0

    .line 222
    sget-object v2, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    invoke-virtual {v2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->stop()V

    .line 248
    :cond_0
    :goto_0
    return v1

    .line 226
    :cond_1
    iget-object v2, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/ubtechinc/StateManager;->isPower(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "\u5750\u4e0b"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 227
    sget-object v2, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    if-eqz v2, :cond_0

    .line 228
    sget-object v2, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    invoke-virtual {v2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->stop()V

    goto :goto_0

    .line 232
    :cond_2
    invoke-virtual {p0, v1}, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->setmIsClosePowerAfterCompleted(Z)V

    .line 242
    :try_start_0
    iget-object v2, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService;

    invoke-interface {v2, p1}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService;->playActionName(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setmIsClosePowerAfterCompleted(Z)V
    .locals 2
    .param p1, "mIsClosePowerAfterCompleted"    # Z

    .prologue
    const/4 v1, 0x0

    .line 134
    iput-boolean p1, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mIsClosePowerAfterCompleted:Z

    .line 136
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mDetectThread:Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$DetectCompletedThread;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mDetectThread:Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$DetectCompletedThread;

    invoke-virtual {v0}, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$DetectCompletedThread;->stopThread()V

    .line 138
    iput-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mDetectThread:Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$DetectCompletedThread;

    .line 141
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 142
    new-instance v0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$DetectCompletedThread;

    invoke-direct {v0, p0, v1}, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$DetectCompletedThread;-><init>(Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$1;)V

    iput-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mDetectThread:Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$DetectCompletedThread;

    .line 143
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mDetectThread:Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$DetectCompletedThread;

    invoke-virtual {v0}, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$DetectCompletedThread;->start()V

    .line 145
    :cond_1
    return-void
.end method

.method public stopActionPlay()V
    .locals 2

    .prologue
    .line 330
    sget-object v1, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    if-eqz v1, :cond_0

    .line 331
    sget-object v1, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    invoke-virtual {v1}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->stop()V

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService;

    if-nez v1, :cond_1

    .line 343
    :goto_0
    return-void

    .line 338
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService;

    invoke-interface {v1}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService;->stopActionPlay()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 339
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
