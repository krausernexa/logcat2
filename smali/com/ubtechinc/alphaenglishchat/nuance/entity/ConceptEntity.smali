.class public Lcom/ubtechinc/alphaenglishchat/nuance/entity/ConceptEntity;
.super Ljava/lang/Object;
.source "ConceptEntity.java"


# instance fields
.field private literal:Ljava/lang/String;

.field private ranges:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLiteral()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/nuance/entity/ConceptEntity;->literal:Ljava/lang/String;

    return-object v0
.end method

.method public getRanges()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/nuance/entity/ConceptEntity;->ranges:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/nuance/entity/ConceptEntity;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setLiteral(Ljava/lang/String;)V
    .locals 0
    .param p1, "literal"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/nuance/entity/ConceptEntity;->literal:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public setRanges(Ljava/lang/String;)V
    .locals 0
    .param p1, "ranges"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/nuance/entity/ConceptEntity;->ranges:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/nuance/entity/ConceptEntity;->value:Ljava/lang/String;

    .line 20
    return-void
.end method
