.class public Lcom/ubtech/alpha2/core/model/response/OrderItem;
.super Lcom/ubtech/alpha2/core/base/BaseModel;
.source "OrderItem.java"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "item"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private focus:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAsAttribute;
    .end annotation
.end field

.field private id:Ljava/lang/Long;

.field private messagetype:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAsAttribute;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAsAttribute;
    .end annotation
.end field

.field private voicecode:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAsAttribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/ubtech/alpha2/core/base/BaseModel;-><init>()V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/ubtech/alpha2/core/base/BaseModel;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/ubtech/alpha2/core/model/response/OrderItem;->id:Ljava/lang/Long;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "messagetype"    # Ljava/lang/String;
    .param p4, "voicecode"    # Ljava/lang/String;
    .param p5, "focus"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/ubtech/alpha2/core/base/BaseModel;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/ubtech/alpha2/core/model/response/OrderItem;->id:Ljava/lang/Long;

    .line 68
    iput-object p2, p0, Lcom/ubtech/alpha2/core/model/response/OrderItem;->name:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/ubtech/alpha2/core/model/response/OrderItem;->messagetype:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/ubtech/alpha2/core/model/response/OrderItem;->voicecode:Ljava/lang/String;

    .line 71
    iput-object p5, p0, Lcom/ubtech/alpha2/core/model/response/OrderItem;->focus:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public getFocus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ubtech/alpha2/core/model/response/OrderItem;->focus:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/ubtech/alpha2/core/model/response/OrderItem;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getMessagetype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/ubtech/alpha2/core/model/response/OrderItem;->messagetype:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ubtech/alpha2/core/model/response/OrderItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getVoicecode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/ubtech/alpha2/core/model/response/OrderItem;->voicecode:Ljava/lang/String;

    return-object v0
.end method

.method public setFocus(Ljava/lang/String;)V
    .locals 0
    .param p1, "focus"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/ubtech/alpha2/core/model/response/OrderItem;->focus:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/ubtech/alpha2/core/model/response/OrderItem;->id:Ljava/lang/Long;

    .line 80
    return-void
.end method

.method public setMessagetype(Ljava/lang/String;)V
    .locals 0
    .param p1, "messagetype"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/ubtech/alpha2/core/model/response/OrderItem;->messagetype:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/ubtech/alpha2/core/model/response/OrderItem;->name:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setVoicecode(Ljava/lang/String;)V
    .locals 0
    .param p1, "voicecode"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/ubtech/alpha2/core/model/response/OrderItem;->voicecode:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<item id ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ubtech/alpha2/core/model/response/OrderItem;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ubtech/alpha2/core/model/response/OrderItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " voicecode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ubtech/alpha2/core/model/response/OrderItem;->voicecode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " messagetype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ubtech/alpha2/core/model/response/OrderItem;->messagetype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " focus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ubtech/alpha2/core/model/response/OrderItem;->focus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " />"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
