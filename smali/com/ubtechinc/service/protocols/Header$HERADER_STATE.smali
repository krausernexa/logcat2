.class final enum Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;
.super Ljava/lang/Enum;
.source "Header.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/service/protocols/Header;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "HERADER_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

.field public static final enum EXTINFO1:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

.field public static final enum EXTINFO2:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

.field public static final enum FLAG1:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

.field public static final enum FLAG2:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

.field public static final enum LENGTH1:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

.field public static final enum LENGTH2:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

.field public static final enum LENGTH3:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

.field public static final enum LENGTH4:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

.field public static final enum MSG:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

.field public static final enum VERSION1:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

.field public static final enum VERSION2:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    new-instance v0, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    const-string v1, "FLAG1"

    invoke-direct {v0, v1, v3}, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->FLAG1:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    new-instance v0, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    const-string v1, "FLAG2"

    invoke-direct {v0, v1, v4}, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->FLAG2:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    new-instance v0, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    const-string v1, "LENGTH1"

    invoke-direct {v0, v1, v5}, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->LENGTH1:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    new-instance v0, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    const-string v1, "LENGTH2"

    invoke-direct {v0, v1, v6}, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->LENGTH2:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    new-instance v0, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    const-string v1, "LENGTH3"

    invoke-direct {v0, v1, v7}, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->LENGTH3:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    new-instance v0, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    const-string v1, "LENGTH4"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->LENGTH4:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    new-instance v0, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    const-string v1, "VERSION1"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->VERSION1:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    new-instance v0, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    const-string v1, "VERSION2"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->VERSION2:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    new-instance v0, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    const-string v1, "EXTINFO1"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->EXTINFO1:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    new-instance v0, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    const-string v1, "EXTINFO2"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->EXTINFO2:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    new-instance v0, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    const-string v1, "MSG"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->MSG:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    .line 50
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    sget-object v1, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->FLAG1:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->FLAG2:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->LENGTH1:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->LENGTH2:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->LENGTH3:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->LENGTH4:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->VERSION1:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->VERSION2:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->EXTINFO1:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->EXTINFO2:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->MSG:Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->$VALUES:[Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 50
    const-class v0, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    return-object v0
.end method

.method public static values()[Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->$VALUES:[Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    invoke-virtual {v0}, [Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ubtechinc/service/protocols/Header$HERADER_STATE;

    return-object v0
.end method
