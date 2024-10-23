.class Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$AlphaActionClienImpl;
.super Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionClient$Stub;
.source "AlphaActonServiceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlphaActionClienImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;


# direct methods
.method private constructor <init>(Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$AlphaActionClienImpl;->this$0:Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;

    invoke-direct {p0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionClient$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;
    .param p2, "x1"    # Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$1;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$AlphaActionClienImpl;-><init>(Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;)V

    return-void
.end method


# virtual methods
.method public onActionStop(Ljava/lang/String;)V
    .locals 2
    .param p1, "strActionFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-static {}, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->access$200()Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    invoke-static {}, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->access$200()Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->stop()V

    .line 159
    :cond_0
    const-string v0, ""

    const-string v1, "!!!!!!!!!! mClientListener 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$AlphaActionClienImpl;->this$0:Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;

    invoke-static {v0}, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->access$300(Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;)Lcom/ubtechinc/alpha2serverlib/interfaces/AlphaActionClientListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$AlphaActionClienImpl;->this$0:Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;

    invoke-static {v0}, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->access$300(Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;)Lcom/ubtechinc/alpha2serverlib/interfaces/AlphaActionClientListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ubtechinc/alpha2serverlib/interfaces/AlphaActionClientListener;->onActionStop(Ljava/lang/String;)V

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$AlphaActionClienImpl;->this$0:Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;

    invoke-static {v0}, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->access$400(Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionClient;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 164
    const-string v0, ""

    const-string v1, "!!!!!!!!!! mClientListener 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$AlphaActionClienImpl;->this$0:Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;

    invoke-static {v0}, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->access$400(Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionClient;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionClient;->onActionStop(Ljava/lang/String;)V

    .line 167
    :cond_2
    return-void
.end method
