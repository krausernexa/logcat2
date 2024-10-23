.class public Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;
.super Ljava/lang/Object;
.source "Alpha2XmppServiceUtil.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil$ISpeechCallBackListenerImpl;
    }
.end annotation


# static fields
.field private static mAlpha2XmppServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCustomMessageListener:Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2CustomMessageListener;

.field private mListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppCallBack$Stub;

.field private mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2CustomMessageListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appID"    # Ljava/lang/String;
    .param p3, "mCientListener"    # Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2CustomMessageListener;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;->mAppId:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;->mCustomMessageListener:Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2CustomMessageListener;

    .line 65
    new-instance v1, Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil$ISpeechCallBackListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil$ISpeechCallBackListenerImpl;-><init>(Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil$1;)V

    iput-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;->mListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppCallBack$Stub;

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ubtechinc.services.Alpha2XmppServices"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, "service":Landroid/content/Intent;
    const-string v1, "com.ubtechinc.alpha2services"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 73
    const-string v1, "XmppServiceImpl"

    const-string v2, "SpeechConnecton bindService ALPHA_XMPP_SERVER"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method static synthetic access$100(Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;)Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2CustomMessageListener;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;->mCustomMessageListener:Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2CustomMessageListener;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2CustomMessageListener;)Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appID"    # Ljava/lang/String;
    .param p2, "mCientListener"    # Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2CustomMessageListener;

    .prologue
    .line 49
    sget-object v0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;->mAlpha2XmppServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;

    if-nez v0, :cond_1

    .line 50
    const-class v1, Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;->mAlpha2XmppServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;

    invoke-direct {v0, p0, p1, p2}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2CustomMessageListener;)V

    sput-object v0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;->mAlpha2XmppServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;

    .line 55
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    sget-object v0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;->mAlpha2XmppServiceUtil:Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public ReleaseConnection()Z
    .locals 3

    .prologue
    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppListener;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppListener;

    iget-object v2, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;->mListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppCallBack$Stub;

    invoke-interface {v1, v2}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppListener;->unRegisterXmppCallBackListener(Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppCallBack;)I

    .line 93
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 28
    invoke-static {p2}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppListener;

    move-result-object v1

    iput-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppListener;

    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppListener;

    iget-object v2, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;->mAppId:Ljava/lang/String;

    iget-object v3, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;->mListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppCallBack$Stub;

    invoke-interface {v1, v2, v3}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppListener;->registerXmppCallBackListener(Ljava/lang/String;Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppCallBack;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 38
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppListener;

    if-eqz v1, :cond_0

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppListener;

    iget-object v2, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;->mListener:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppCallBack$Stub;

    invoke-interface {v1, v2}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppListener;->unRegisterXmppCallBackListener(Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppCallBack;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendCustomXmppMessage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppListener;

    if-eqz v1, :cond_0

    .line 80
    :try_start_0
    const-string v1, "XmppServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCustomXmppMessage :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;->mService:Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppListener;->sendCustomXmppMessage(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
