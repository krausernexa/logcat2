.class public final enum Lai/api/AIConfiguration$SupportedLanguages;
.super Ljava/lang/Enum;
.source "AIConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/api/AIConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SupportedLanguages"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lai/api/AIConfiguration$SupportedLanguages;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/api/AIConfiguration$SupportedLanguages;

.field public static final enum ChineseChina:Lai/api/AIConfiguration$SupportedLanguages;

.field public static final enum ChineseHongKong:Lai/api/AIConfiguration$SupportedLanguages;

.field public static final enum ChineseTaiwan:Lai/api/AIConfiguration$SupportedLanguages;

.field public static final enum English:Lai/api/AIConfiguration$SupportedLanguages;

.field public static final enum EnglishGB:Lai/api/AIConfiguration$SupportedLanguages;

.field public static final enum EnglishUS:Lai/api/AIConfiguration$SupportedLanguages;

.field public static final enum French:Lai/api/AIConfiguration$SupportedLanguages;

.field public static final enum German:Lai/api/AIConfiguration$SupportedLanguages;

.field public static final enum Italian:Lai/api/AIConfiguration$SupportedLanguages;

.field public static final enum Japanese:Lai/api/AIConfiguration$SupportedLanguages;

.field public static final enum Korean:Lai/api/AIConfiguration$SupportedLanguages;

.field public static final enum Portuguese:Lai/api/AIConfiguration$SupportedLanguages;

.field public static final enum PortugueseBrazil:Lai/api/AIConfiguration$SupportedLanguages;

.field public static final enum Russian:Lai/api/AIConfiguration$SupportedLanguages;

.field public static final enum Spanish:Lai/api/AIConfiguration$SupportedLanguages;


# instance fields
.field private final apiaiLanguage:Ljava/lang/String;

.field private final languageTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 65
    new-instance v0, Lai/api/AIConfiguration$SupportedLanguages;

    const-string v1, "English"

    const-string v2, "en"

    invoke-direct {v0, v1, v4, v2}, Lai/api/AIConfiguration$SupportedLanguages;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lai/api/AIConfiguration$SupportedLanguages;->English:Lai/api/AIConfiguration$SupportedLanguages;

    .line 66
    new-instance v0, Lai/api/AIConfiguration$SupportedLanguages;

    const-string v1, "EnglishUS"

    const-string v2, "en-US"

    const-string v3, "en"

    invoke-direct {v0, v1, v5, v2, v3}, Lai/api/AIConfiguration$SupportedLanguages;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lai/api/AIConfiguration$SupportedLanguages;->EnglishUS:Lai/api/AIConfiguration$SupportedLanguages;

    .line 67
    new-instance v0, Lai/api/AIConfiguration$SupportedLanguages;

    const-string v1, "EnglishGB"

    const-string v2, "en-GB"

    const-string v3, "en"

    invoke-direct {v0, v1, v6, v2, v3}, Lai/api/AIConfiguration$SupportedLanguages;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lai/api/AIConfiguration$SupportedLanguages;->EnglishGB:Lai/api/AIConfiguration$SupportedLanguages;

    .line 68
    new-instance v0, Lai/api/AIConfiguration$SupportedLanguages;

    const-string v1, "Russian"

    const-string v2, "ru"

    invoke-direct {v0, v1, v7, v2}, Lai/api/AIConfiguration$SupportedLanguages;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lai/api/AIConfiguration$SupportedLanguages;->Russian:Lai/api/AIConfiguration$SupportedLanguages;

    .line 69
    new-instance v0, Lai/api/AIConfiguration$SupportedLanguages;

    const-string v1, "German"

    const-string v2, "de"

    invoke-direct {v0, v1, v8, v2}, Lai/api/AIConfiguration$SupportedLanguages;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lai/api/AIConfiguration$SupportedLanguages;->German:Lai/api/AIConfiguration$SupportedLanguages;

    .line 70
    new-instance v0, Lai/api/AIConfiguration$SupportedLanguages;

    const-string v1, "Portuguese"

    const/4 v2, 0x5

    const-string v3, "pt"

    invoke-direct {v0, v1, v2, v3}, Lai/api/AIConfiguration$SupportedLanguages;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lai/api/AIConfiguration$SupportedLanguages;->Portuguese:Lai/api/AIConfiguration$SupportedLanguages;

    .line 71
    new-instance v0, Lai/api/AIConfiguration$SupportedLanguages;

    const-string v1, "PortugueseBrazil"

    const/4 v2, 0x6

    const-string v3, "pt-BR"

    invoke-direct {v0, v1, v2, v3}, Lai/api/AIConfiguration$SupportedLanguages;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lai/api/AIConfiguration$SupportedLanguages;->PortugueseBrazil:Lai/api/AIConfiguration$SupportedLanguages;

    .line 72
    new-instance v0, Lai/api/AIConfiguration$SupportedLanguages;

    const-string v1, "Spanish"

    const/4 v2, 0x7

    const-string v3, "es"

    invoke-direct {v0, v1, v2, v3}, Lai/api/AIConfiguration$SupportedLanguages;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lai/api/AIConfiguration$SupportedLanguages;->Spanish:Lai/api/AIConfiguration$SupportedLanguages;

    .line 73
    new-instance v0, Lai/api/AIConfiguration$SupportedLanguages;

    const-string v1, "French"

    const/16 v2, 0x8

    const-string v3, "fr"

    invoke-direct {v0, v1, v2, v3}, Lai/api/AIConfiguration$SupportedLanguages;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lai/api/AIConfiguration$SupportedLanguages;->French:Lai/api/AIConfiguration$SupportedLanguages;

    .line 74
    new-instance v0, Lai/api/AIConfiguration$SupportedLanguages;

    const-string v1, "Italian"

    const/16 v2, 0x9

    const-string v3, "it"

    invoke-direct {v0, v1, v2, v3}, Lai/api/AIConfiguration$SupportedLanguages;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lai/api/AIConfiguration$SupportedLanguages;->Italian:Lai/api/AIConfiguration$SupportedLanguages;

    .line 75
    new-instance v0, Lai/api/AIConfiguration$SupportedLanguages;

    const-string v1, "Japanese"

    const/16 v2, 0xa

    const-string v3, "ja"

    invoke-direct {v0, v1, v2, v3}, Lai/api/AIConfiguration$SupportedLanguages;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lai/api/AIConfiguration$SupportedLanguages;->Japanese:Lai/api/AIConfiguration$SupportedLanguages;

    .line 76
    new-instance v0, Lai/api/AIConfiguration$SupportedLanguages;

    const-string v1, "Korean"

    const/16 v2, 0xb

    const-string v3, "ko"

    invoke-direct {v0, v1, v2, v3}, Lai/api/AIConfiguration$SupportedLanguages;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lai/api/AIConfiguration$SupportedLanguages;->Korean:Lai/api/AIConfiguration$SupportedLanguages;

    .line 77
    new-instance v0, Lai/api/AIConfiguration$SupportedLanguages;

    const-string v1, "ChineseChina"

    const/16 v2, 0xc

    const-string v3, "zh-CN"

    invoke-direct {v0, v1, v2, v3}, Lai/api/AIConfiguration$SupportedLanguages;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lai/api/AIConfiguration$SupportedLanguages;->ChineseChina:Lai/api/AIConfiguration$SupportedLanguages;

    .line 78
    new-instance v0, Lai/api/AIConfiguration$SupportedLanguages;

    const-string v1, "ChineseHongKong"

    const/16 v2, 0xd

    const-string v3, "zh-HK"

    invoke-direct {v0, v1, v2, v3}, Lai/api/AIConfiguration$SupportedLanguages;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lai/api/AIConfiguration$SupportedLanguages;->ChineseHongKong:Lai/api/AIConfiguration$SupportedLanguages;

    .line 79
    new-instance v0, Lai/api/AIConfiguration$SupportedLanguages;

    const-string v1, "ChineseTaiwan"

    const/16 v2, 0xe

    const-string v3, "zh-TW"

    invoke-direct {v0, v1, v2, v3}, Lai/api/AIConfiguration$SupportedLanguages;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lai/api/AIConfiguration$SupportedLanguages;->ChineseTaiwan:Lai/api/AIConfiguration$SupportedLanguages;

    .line 64
    const/16 v0, 0xf

    new-array v0, v0, [Lai/api/AIConfiguration$SupportedLanguages;

    sget-object v1, Lai/api/AIConfiguration$SupportedLanguages;->English:Lai/api/AIConfiguration$SupportedLanguages;

    aput-object v1, v0, v4

    sget-object v1, Lai/api/AIConfiguration$SupportedLanguages;->EnglishUS:Lai/api/AIConfiguration$SupportedLanguages;

    aput-object v1, v0, v5

    sget-object v1, Lai/api/AIConfiguration$SupportedLanguages;->EnglishGB:Lai/api/AIConfiguration$SupportedLanguages;

    aput-object v1, v0, v6

    sget-object v1, Lai/api/AIConfiguration$SupportedLanguages;->Russian:Lai/api/AIConfiguration$SupportedLanguages;

    aput-object v1, v0, v7

    sget-object v1, Lai/api/AIConfiguration$SupportedLanguages;->German:Lai/api/AIConfiguration$SupportedLanguages;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lai/api/AIConfiguration$SupportedLanguages;->Portuguese:Lai/api/AIConfiguration$SupportedLanguages;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lai/api/AIConfiguration$SupportedLanguages;->PortugueseBrazil:Lai/api/AIConfiguration$SupportedLanguages;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lai/api/AIConfiguration$SupportedLanguages;->Spanish:Lai/api/AIConfiguration$SupportedLanguages;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lai/api/AIConfiguration$SupportedLanguages;->French:Lai/api/AIConfiguration$SupportedLanguages;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lai/api/AIConfiguration$SupportedLanguages;->Italian:Lai/api/AIConfiguration$SupportedLanguages;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lai/api/AIConfiguration$SupportedLanguages;->Japanese:Lai/api/AIConfiguration$SupportedLanguages;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lai/api/AIConfiguration$SupportedLanguages;->Korean:Lai/api/AIConfiguration$SupportedLanguages;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lai/api/AIConfiguration$SupportedLanguages;->ChineseChina:Lai/api/AIConfiguration$SupportedLanguages;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lai/api/AIConfiguration$SupportedLanguages;->ChineseHongKong:Lai/api/AIConfiguration$SupportedLanguages;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lai/api/AIConfiguration$SupportedLanguages;->ChineseTaiwan:Lai/api/AIConfiguration$SupportedLanguages;

    aput-object v2, v0, v1

    sput-object v0, Lai/api/AIConfiguration$SupportedLanguages;->$VALUES:[Lai/api/AIConfiguration$SupportedLanguages;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "languageTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 85
    iput-object p3, p0, Lai/api/AIConfiguration$SupportedLanguages;->languageTag:Ljava/lang/String;

    .line 86
    iput-object p3, p0, Lai/api/AIConfiguration$SupportedLanguages;->apiaiLanguage:Ljava/lang/String;

    .line 87
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "languageTag"    # Ljava/lang/String;
    .param p4, "apiaiLanguage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 90
    iput-object p3, p0, Lai/api/AIConfiguration$SupportedLanguages;->languageTag:Ljava/lang/String;

    .line 91
    iput-object p4, p0, Lai/api/AIConfiguration$SupportedLanguages;->apiaiLanguage:Ljava/lang/String;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lai/api/AIConfiguration$SupportedLanguages;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lai/api/AIConfiguration$SupportedLanguages;

    .prologue
    .line 64
    iget-object v0, p0, Lai/api/AIConfiguration$SupportedLanguages;->languageTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lai/api/AIConfiguration$SupportedLanguages;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lai/api/AIConfiguration$SupportedLanguages;

    .prologue
    .line 64
    iget-object v0, p0, Lai/api/AIConfiguration$SupportedLanguages;->apiaiLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public static fromLanguageTag(Ljava/lang/String;)Lai/api/AIConfiguration$SupportedLanguages;
    .locals 2
    .param p0, "languageTag"    # Ljava/lang/String;

    .prologue
    .line 95
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 127
    sget-object v0, Lai/api/AIConfiguration$SupportedLanguages;->English:Lai/api/AIConfiguration$SupportedLanguages;

    :goto_1
    return-object v0

    .line 95
    :sswitch_0
    const-string v1, "en"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "en-US"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "en-GB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "ru"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "de"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "pt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "pt-BR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v1, "es"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v1, "fr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string v1, "it"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_a
    const-string v1, "ja"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_b
    const-string v1, "ko"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "zh-CN"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "zh-HK"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "zh-TW"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_0

    .line 97
    :pswitch_0
    sget-object v0, Lai/api/AIConfiguration$SupportedLanguages;->English:Lai/api/AIConfiguration$SupportedLanguages;

    goto/16 :goto_1

    .line 99
    :pswitch_1
    sget-object v0, Lai/api/AIConfiguration$SupportedLanguages;->EnglishUS:Lai/api/AIConfiguration$SupportedLanguages;

    goto/16 :goto_1

    .line 101
    :pswitch_2
    sget-object v0, Lai/api/AIConfiguration$SupportedLanguages;->EnglishGB:Lai/api/AIConfiguration$SupportedLanguages;

    goto/16 :goto_1

    .line 103
    :pswitch_3
    sget-object v0, Lai/api/AIConfiguration$SupportedLanguages;->Russian:Lai/api/AIConfiguration$SupportedLanguages;

    goto/16 :goto_1

    .line 105
    :pswitch_4
    sget-object v0, Lai/api/AIConfiguration$SupportedLanguages;->German:Lai/api/AIConfiguration$SupportedLanguages;

    goto/16 :goto_1

    .line 107
    :pswitch_5
    sget-object v0, Lai/api/AIConfiguration$SupportedLanguages;->Portuguese:Lai/api/AIConfiguration$SupportedLanguages;

    goto/16 :goto_1

    .line 109
    :pswitch_6
    sget-object v0, Lai/api/AIConfiguration$SupportedLanguages;->PortugueseBrazil:Lai/api/AIConfiguration$SupportedLanguages;

    goto/16 :goto_1

    .line 111
    :pswitch_7
    sget-object v0, Lai/api/AIConfiguration$SupportedLanguages;->Spanish:Lai/api/AIConfiguration$SupportedLanguages;

    goto/16 :goto_1

    .line 113
    :pswitch_8
    sget-object v0, Lai/api/AIConfiguration$SupportedLanguages;->French:Lai/api/AIConfiguration$SupportedLanguages;

    goto/16 :goto_1

    .line 115
    :pswitch_9
    sget-object v0, Lai/api/AIConfiguration$SupportedLanguages;->Italian:Lai/api/AIConfiguration$SupportedLanguages;

    goto/16 :goto_1

    .line 117
    :pswitch_a
    sget-object v0, Lai/api/AIConfiguration$SupportedLanguages;->Japanese:Lai/api/AIConfiguration$SupportedLanguages;

    goto/16 :goto_1

    .line 119
    :pswitch_b
    sget-object v0, Lai/api/AIConfiguration$SupportedLanguages;->Korean:Lai/api/AIConfiguration$SupportedLanguages;

    goto/16 :goto_1

    .line 121
    :pswitch_c
    sget-object v0, Lai/api/AIConfiguration$SupportedLanguages;->ChineseChina:Lai/api/AIConfiguration$SupportedLanguages;

    goto/16 :goto_1

    .line 123
    :pswitch_d
    sget-object v0, Lai/api/AIConfiguration$SupportedLanguages;->ChineseHongKong:Lai/api/AIConfiguration$SupportedLanguages;

    goto/16 :goto_1

    .line 125
    :pswitch_e
    sget-object v0, Lai/api/AIConfiguration$SupportedLanguages;->ChineseTaiwan:Lai/api/AIConfiguration$SupportedLanguages;

    goto/16 :goto_1

    .line 95
    nop

    :sswitch_data_0
    .sparse-switch
        0xc81 -> :sswitch_4
        0xca9 -> :sswitch_0
        0xcae -> :sswitch_7
        0xccc -> :sswitch_8
        0xd2b -> :sswitch_9
        0xd37 -> :sswitch_a
        0xd64 -> :sswitch_b
        0xe04 -> :sswitch_5
        0xe43 -> :sswitch_3
        0x5c1f87f -> :sswitch_2
        0x5c1fa42 -> :sswitch_1
        0x65fb4b9 -> :sswitch_6
        0x6e72b6a -> :sswitch_c
        0x6e72c02 -> :sswitch_d
        0x6e72d82 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lai/api/AIConfiguration$SupportedLanguages;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 64
    const-class v0, Lai/api/AIConfiguration$SupportedLanguages;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lai/api/AIConfiguration$SupportedLanguages;

    return-object v0
.end method

.method public static values()[Lai/api/AIConfiguration$SupportedLanguages;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lai/api/AIConfiguration$SupportedLanguages;->$VALUES:[Lai/api/AIConfiguration$SupportedLanguages;

    invoke-virtual {v0}, [Lai/api/AIConfiguration$SupportedLanguages;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lai/api/AIConfiguration$SupportedLanguages;

    return-object v0
.end method
