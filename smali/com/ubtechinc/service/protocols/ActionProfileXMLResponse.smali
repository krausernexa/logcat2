.class public Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;
.super Ljava/lang/Object;
.source "ActionProfileXMLResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "actionprofile_xml"
.end annotation

.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x71599931644947a5L


# instance fields
.field private directionA:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAsAttribute;
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field private directionB:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAsAttribute;
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field

.field private directionC:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAsAttribute;
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation
.end field

.field private directionD:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAsAttribute;
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x3
    .end annotation
.end field

.field private directionDown:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAsAttribute;
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x4
    .end annotation
.end field

.field private directionLeft:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAsAttribute;
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x5
    .end annotation
.end field

.field private directionRight:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAsAttribute;
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x6
    .end annotation
.end field

.field private directionUp:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAsAttribute;
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x7
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDirectionA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;->directionA:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectionB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;->directionB:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectionC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;->directionC:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectionD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;->directionD:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectionDown()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;->directionDown:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectionLeft()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;->directionLeft:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectionRight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;->directionRight:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectionUp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;->directionUp:Ljava/lang/String;

    return-object v0
.end method

.method public setDirectionA(Ljava/lang/String;)V
    .locals 0
    .param p1, "directionA"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;->directionA:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setDirectionB(Ljava/lang/String;)V
    .locals 0
    .param p1, "directionB"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;->directionB:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setDirectionC(Ljava/lang/String;)V
    .locals 0
    .param p1, "directionC"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;->directionC:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setDirectionD(Ljava/lang/String;)V
    .locals 0
    .param p1, "directionD"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;->directionD:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setDirectionDown(Ljava/lang/String;)V
    .locals 0
    .param p1, "directionDown"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;->directionDown:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setDirectionLeft(Ljava/lang/String;)V
    .locals 0
    .param p1, "directionLeft"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;->directionLeft:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setDirectionRight(Ljava/lang/String;)V
    .locals 0
    .param p1, "directionRight"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;->directionRight:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setDirectionUp(Ljava/lang/String;)V
    .locals 0
    .param p1, "directionUp"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;->directionUp:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "direction_left"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;->directionLeft:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " direction_up"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;->directionUp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " direction_right"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;->directionRight:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " direction_down"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;->directionDown:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " direction_a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;->directionD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " direction_b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;->directionB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " direction_c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;->directionC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " direction_d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ubtechinc/service/protocols/ActionProfileXMLResponse;->directionD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
