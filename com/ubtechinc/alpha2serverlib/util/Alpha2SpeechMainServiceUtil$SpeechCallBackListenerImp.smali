.class public Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$SpeechCallBackListenerImp;
.super Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;
.source "Alpha2SpeechMainServiceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpeechCallBackListenerImp"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;


# direct methods
.method public constructor <init>(Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    .prologue
    .line 644
    iput-object p1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$SpeechCallBackListenerImp;->this$0:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    invoke-direct {p0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 655
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$SpeechCallBackListenerImp;->this$0:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    invoke-static {v0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->access$300(Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;)Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2SpeechGrammarListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$SpeechCallBackListenerImp;->this$0:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    invoke-static {v0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->access$300(Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;)Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2SpeechGrammarListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2SpeechGrammarListener;->onSpeechGrammarResult(ILjava/lang/String;)V

    .line 660
    :goto_0
    return-void

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$SpeechCallBackListenerImp;->this$0:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    invoke-static {v0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->access$400(Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SpeechClientListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SpeechClientListener;->onServerCallBack(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPlayEnd(Z)V
    .locals 2
    .param p1, "isEnd"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 672
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$SpeechCallBackListenerImp;->this$0:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    invoke-static {v0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->access$500(Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;)Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$SpeechCallBackListenerImp;->this$0:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    invoke-static {v0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->access$500(Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;)Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->stop()V

    .line 675
    :cond_0
    const-string v0, "SpeechManager"

    const-string v1, "SpeechMainUtil onServerPlayEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$SpeechCallBackListenerImp;->this$0:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    invoke-static {v0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->access$400(Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SpeechClientListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SpeechClientListener;->onServerPlayEnd(Z)V

    .line 678
    return-void
.end method
