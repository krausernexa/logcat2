.class Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil$ISpeechCallBackListenerImpl;
.super Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppCallBack$Stub;
.source "Alpha2XmppServiceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ISpeechCallBackListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;


# direct methods
.method private constructor <init>(Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil$ISpeechCallBackListenerImpl;->this$0:Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;

    invoke-direct {p0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppCallBack$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;
    .param p2, "x1"    # Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil$1;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil$ISpeechCallBackListenerImpl;-><init>(Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;)V

    return-void
.end method


# virtual methods
.method public onReceiveMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 107
    const-string v0, "XmppServiceImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil$ISpeechCallBackListenerImpl;->this$0:Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;

    invoke-static {v0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;->access$100(Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;)Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2CustomMessageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil$ISpeechCallBackListenerImpl;->this$0:Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;

    invoke-static {v0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;->access$100(Lcom/ubtechinc/alpha2serverlib/util/Alpha2XmppServiceUtil;)Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2CustomMessageListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2CustomMessageListener;->onReceiveMessage([B)V

    .line 111
    :cond_0
    return-void
.end method
