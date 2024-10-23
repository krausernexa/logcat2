.class public final enum Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;
.super Ljava/lang/Enum;
.source "AbstractEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;

.field public static final enum EVENT_TYPE_ACTION:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;

.field public static final enum EVENT_TYPE_CHEST_UPDATE:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;

.field public static final enum EVENT_TYPE_HEADER_UPDATE:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;

.field public static final enum EVENT_TYPE_TTS:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;

.field public static final enum EVENT_TYPE_TTS_ACTION:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;

    const-string v1, "EVENT_TYPE_TTS"

    invoke-direct {v0, v1, v2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;->EVENT_TYPE_TTS:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;

    .line 33
    new-instance v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;

    const-string v1, "EVENT_TYPE_ACTION"

    invoke-direct {v0, v1, v3}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;->EVENT_TYPE_ACTION:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;

    .line 34
    new-instance v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;

    const-string v1, "EVENT_TYPE_TTS_ACTION"

    invoke-direct {v0, v1, v4}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;->EVENT_TYPE_TTS_ACTION:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;

    .line 35
    new-instance v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;

    const-string v1, "EVENT_TYPE_CHEST_UPDATE"

    invoke-direct {v0, v1, v5}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;->EVENT_TYPE_CHEST_UPDATE:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;

    .line 36
    new-instance v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;

    const-string v1, "EVENT_TYPE_HEADER_UPDATE"

    invoke-direct {v0, v1, v6}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;->EVENT_TYPE_HEADER_UPDATE:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;

    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;

    sget-object v1, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;->EVENT_TYPE_TTS:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;->EVENT_TYPE_ACTION:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;->EVENT_TYPE_TTS_ACTION:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;->EVENT_TYPE_CHEST_UPDATE:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;->EVENT_TYPE_HEADER_UPDATE:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;->$VALUES:[Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;

    return-object v0
.end method

.method public static values()[Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;->$VALUES:[Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;

    invoke-virtual {v0}, [Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;

    return-object v0
.end method
