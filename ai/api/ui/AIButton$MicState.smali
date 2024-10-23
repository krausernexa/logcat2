.class public final enum Lai/api/ui/AIButton$MicState;
.super Ljava/lang/Enum;
.source "AIButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/api/ui/AIButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MicState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lai/api/ui/AIButton$MicState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/api/ui/AIButton$MicState;

.field public static final enum busy:Lai/api/ui/AIButton$MicState;

.field public static final enum initializingTts:Lai/api/ui/AIButton$MicState;

.field public static final enum listening:Lai/api/ui/AIButton$MicState;

.field public static final enum normal:Lai/api/ui/AIButton$MicState;

.field public static final enum speaking:Lai/api/ui/AIButton$MicState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 141
    new-instance v0, Lai/api/ui/AIButton$MicState;

    const-string v1, "normal"

    invoke-direct {v0, v1, v2}, Lai/api/ui/AIButton$MicState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lai/api/ui/AIButton$MicState;->normal:Lai/api/ui/AIButton$MicState;

    .line 142
    new-instance v0, Lai/api/ui/AIButton$MicState;

    const-string v1, "busy"

    invoke-direct {v0, v1, v3}, Lai/api/ui/AIButton$MicState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lai/api/ui/AIButton$MicState;->busy:Lai/api/ui/AIButton$MicState;

    .line 143
    new-instance v0, Lai/api/ui/AIButton$MicState;

    const-string v1, "listening"

    invoke-direct {v0, v1, v4}, Lai/api/ui/AIButton$MicState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lai/api/ui/AIButton$MicState;->listening:Lai/api/ui/AIButton$MicState;

    .line 144
    new-instance v0, Lai/api/ui/AIButton$MicState;

    const-string v1, "speaking"

    invoke-direct {v0, v1, v5}, Lai/api/ui/AIButton$MicState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lai/api/ui/AIButton$MicState;->speaking:Lai/api/ui/AIButton$MicState;

    .line 145
    new-instance v0, Lai/api/ui/AIButton$MicState;

    const-string v1, "initializingTts"

    invoke-direct {v0, v1, v6}, Lai/api/ui/AIButton$MicState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lai/api/ui/AIButton$MicState;->initializingTts:Lai/api/ui/AIButton$MicState;

    .line 140
    const/4 v0, 0x5

    new-array v0, v0, [Lai/api/ui/AIButton$MicState;

    sget-object v1, Lai/api/ui/AIButton$MicState;->normal:Lai/api/ui/AIButton$MicState;

    aput-object v1, v0, v2

    sget-object v1, Lai/api/ui/AIButton$MicState;->busy:Lai/api/ui/AIButton$MicState;

    aput-object v1, v0, v3

    sget-object v1, Lai/api/ui/AIButton$MicState;->listening:Lai/api/ui/AIButton$MicState;

    aput-object v1, v0, v4

    sget-object v1, Lai/api/ui/AIButton$MicState;->speaking:Lai/api/ui/AIButton$MicState;

    aput-object v1, v0, v5

    sget-object v1, Lai/api/ui/AIButton$MicState;->initializingTts:Lai/api/ui/AIButton$MicState;

    aput-object v1, v0, v6

    sput-object v0, Lai/api/ui/AIButton$MicState;->$VALUES:[Lai/api/ui/AIButton$MicState;

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
    .line 140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromAttrs(Landroid/content/res/TypedArray;)Lai/api/ui/AIButton$MicState;
    .locals 2
    .param p0, "viewAttrs"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v1, 0x0

    .line 148
    sget v0, Lai/api/R$styleable;->SoundLevelButton_state_listening:I

    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Lai/api/ui/AIButton$MicState;->listening:Lai/api/ui/AIButton$MicState;

    .line 157
    :goto_0
    return-object v0

    .line 150
    :cond_0
    sget v0, Lai/api/R$styleable;->SoundLevelButton_state_waiting:I

    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    sget-object v0, Lai/api/ui/AIButton$MicState;->busy:Lai/api/ui/AIButton$MicState;

    goto :goto_0

    .line 152
    :cond_1
    sget v0, Lai/api/R$styleable;->SoundLevelButton_state_speaking:I

    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    sget-object v0, Lai/api/ui/AIButton$MicState;->speaking:Lai/api/ui/AIButton$MicState;

    goto :goto_0

    .line 154
    :cond_2
    sget v0, Lai/api/R$styleable;->SoundLevelButton_state_initializing_tts:I

    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    sget-object v0, Lai/api/ui/AIButton$MicState;->initializingTts:Lai/api/ui/AIButton$MicState;

    goto :goto_0

    .line 157
    :cond_3
    sget-object v0, Lai/api/ui/AIButton$MicState;->normal:Lai/api/ui/AIButton$MicState;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lai/api/ui/AIButton$MicState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 140
    const-class v0, Lai/api/ui/AIButton$MicState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lai/api/ui/AIButton$MicState;

    return-object v0
.end method

.method public static values()[Lai/api/ui/AIButton$MicState;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lai/api/ui/AIButton$MicState;->$VALUES:[Lai/api/ui/AIButton$MicState;

    invoke-virtual {v0}, [Lai/api/ui/AIButton$MicState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lai/api/ui/AIButton$MicState;

    return-object v0
.end method
