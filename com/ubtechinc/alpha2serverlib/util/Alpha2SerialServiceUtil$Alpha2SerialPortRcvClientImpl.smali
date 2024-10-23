.class Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil$Alpha2SerialPortRcvClientImpl;
.super Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortRcvClient$Stub;
.source "Alpha2SerialServiceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Alpha2SerialPortRcvClientImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;


# direct methods
.method private constructor <init>(Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil$Alpha2SerialPortRcvClientImpl;->this$0:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;

    invoke-direct {p0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortRcvClient$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;
    .param p2, "x1"    # Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil$1;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil$Alpha2SerialPortRcvClientImpl;-><init>(Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;)V

    return-void
.end method


# virtual methods
.method public onListenSerialPortRcvData([BI)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil$Alpha2SerialPortRcvClientImpl;->this$0:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;

    invoke-static {v0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;->access$000(Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;)Lcom/ubtechinc/alpha2serverlib/interfaces/Alpha2SerialPortOnRcvListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil$Alpha2SerialPortRcvClientImpl;->this$0:Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;

    invoke-static {v0}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;->access$000(Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;)Lcom/ubtechinc/alpha2serverlib/interfaces/Alpha2SerialPortOnRcvListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/ubtechinc/alpha2serverlib/interfaces/Alpha2SerialPortOnRcvListener;->onListenSerialPortRcvData([BI)V

    .line 101
    :cond_0
    return-void
.end method
