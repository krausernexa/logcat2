.class Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$3;
.super Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishUnderstandListener$Stub;
.source "Alpha2SpeechMainServiceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->englishUnderstand(Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishUnderstandListener;Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishOfflineUnderstandListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;


# direct methods
.method constructor <init>(Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$3;->this$0:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    invoke-direct {p0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishUnderstandListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlpha2EnglishUnderstandResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "strResult"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 556
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$3;->this$0:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    invoke-static {v0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->access$200(Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishUnderstandListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil$3;->this$0:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;

    invoke-static {v0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;->access$200(Lcom/ubtechinc/alpha2serverlib/util/Alpha2SpeechMainServiceUtil;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishUnderstandListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishUnderstandListener;->onAlpha2EnglishUnderstandResult(Ljava/lang/String;)V

    .line 559
    :cond_0
    return-void
.end method
