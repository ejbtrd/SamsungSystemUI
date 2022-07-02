.class public final enum Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;
.super Ljava/lang/Enum;
.source "EdgeLightingStyleOption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

.field public static final enum COLOR:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

.field public static final enum DURATION:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

.field public static final enum EFFECT:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

.field public static final enum TRANSPARENCY:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

.field public static final enum WIDTH:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;


# instance fields
.field private mIconResID:I

.field private mTitleID:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 6
    new-instance v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    sget v1, Lcom/android/systemui/R$string;->edge_lighting_style_effect:I

    sget v2, Lcom/android/systemui/R$drawable;->edge_lighting_setting_icon_style:I

    const-string v3, "EFFECT"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->EFFECT:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    .line 7
    new-instance v1, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    sget v2, Lcom/android/systemui/R$string;->edge_lighting_header_color:I

    sget v3, Lcom/android/systemui/R$drawable;->edge_lighting_setting_icon_select_color:I

    const-string v5, "COLOR"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v2, v3}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->COLOR:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    .line 8
    new-instance v2, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    sget v3, Lcom/android/systemui/R$string;->edge_lighting_transparency:I

    sget v5, Lcom/android/systemui/R$drawable;->edge_lighting_setting_transparency:I

    const-string v7, "TRANSPARENCY"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v3, v5}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->TRANSPARENCY:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    .line 9
    new-instance v3, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    sget v5, Lcom/android/systemui/R$string;->edge_lighting_header_width:I

    sget v7, Lcom/android/systemui/R$drawable;->edge_lighting_setting_icon_select_width:I

    const-string v9, "WIDTH"

    const/4 v10, 0x3

    invoke-direct {v3, v9, v10, v5, v7}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->WIDTH:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    .line 10
    new-instance v5, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    sget v7, Lcom/android/systemui/R$string;->edge_lighting_header_duration:I

    sget v9, Lcom/android/systemui/R$drawable;->edge_lighting_setting_duration:I

    const-string v11, "DURATION"

    const/4 v12, 0x4

    invoke-direct {v5, v11, v12, v7, v9}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->DURATION:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    const/4 v7, 0x5

    new-array v7, v7, [Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    aput-object v0, v7, v4

    aput-object v1, v7, v6

    aput-object v2, v7, v8

    aput-object v3, v7, v10

    aput-object v5, v7, v12

    .line 5
    sput-object v7, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->$VALUES:[Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p4, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->mIconResID:I

    .line 18
    iput p3, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->mTitleID:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;
    .locals 1

    .line 5
    const-class v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;
    .locals 1

    .line 5
    sget-object v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->$VALUES:[Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    invoke-virtual {v0}, [Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    return-object v0
.end method


# virtual methods
.method public getTitleStringID()I
    .locals 0

    .line 26
    iget p0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->mTitleID:I

    return p0
.end method
