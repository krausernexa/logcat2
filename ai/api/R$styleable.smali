.class public final Lai/api/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/api/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final MaskedColorView:[I

.field public static MaskedColorView_mainColor:I

.field public static final SoundLevelButton:[I

.field public static SoundLevelButton_centerColor:I

.field public static SoundLevelButton_circleCenterX:I

.field public static SoundLevelButton_circleCenterY:I

.field public static SoundLevelButton_haloColor:I

.field public static SoundLevelButton_maxRadius:I

.field public static SoundLevelButton_minRadius:I

.field public static SoundLevelButton_state_initializing_tts:I

.field public static SoundLevelButton_state_listening:I

.field public static SoundLevelButton_state_speaking:I

.field public static SoundLevelButton_state_waiting:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 160
    new-array v0, v3, [I

    const/high16 v1, 0x7f010000

    aput v1, v0, v2

    sput-object v0, Lai/api/R$styleable;->MaskedColorView:[I

    .line 174
    sput v2, Lai/api/R$styleable;->MaskedColorView_mainColor:I

    .line 203
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lai/api/R$styleable;->SoundLevelButton:[I

    .line 222
    const/4 v0, 0x4

    sput v0, Lai/api/R$styleable;->SoundLevelButton_centerColor:I

    .line 238
    const/4 v0, 0x2

    sput v0, Lai/api/R$styleable;->SoundLevelButton_circleCenterX:I

    .line 254
    const/4 v0, 0x3

    sput v0, Lai/api/R$styleable;->SoundLevelButton_circleCenterY:I

    .line 269
    const/4 v0, 0x5

    sput v0, Lai/api/R$styleable;->SoundLevelButton_haloColor:I

    .line 285
    sput v3, Lai/api/R$styleable;->SoundLevelButton_maxRadius:I

    .line 301
    sput v2, Lai/api/R$styleable;->SoundLevelButton_minRadius:I

    .line 315
    const/16 v0, 0x9

    sput v0, Lai/api/R$styleable;->SoundLevelButton_state_initializing_tts:I

    .line 329
    const/4 v0, 0x6

    sput v0, Lai/api/R$styleable;->SoundLevelButton_state_listening:I

    .line 343
    const/16 v0, 0x8

    sput v0, Lai/api/R$styleable;->SoundLevelButton_state_speaking:I

    .line 357
    const/4 v0, 0x7

    sput v0, Lai/api/R$styleable;->SoundLevelButton_state_waiting:I

    return-void

    .line 203
    :array_0
    .array-data 4
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01000a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
