.class public Lcom/ubtechinc/alpha2ctrlapp/network/model/request/AliceQARequest;
.super Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;
.source "AliceQARequest.java"


# instance fields
.field private content:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/AliceQARequest;->content:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/AliceQARequest;->content:Ljava/lang/String;

    .line 19
    return-void
.end method
