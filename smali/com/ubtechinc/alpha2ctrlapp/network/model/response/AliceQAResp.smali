.class public Lcom/ubtechinc/alpha2ctrlapp/network/model/response/AliceQAResp;
.super Ljava/lang/Object;
.source "AliceQAResp.java"


# instance fields
.field private answer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnswer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/AliceQAResp;->answer:Ljava/lang/String;

    return-object v0
.end method

.method public setAnswer(Ljava/lang/String;)V
    .locals 0
    .param p1, "answer"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/AliceQAResp;->answer:Ljava/lang/String;

    .line 18
    return-void
.end method
