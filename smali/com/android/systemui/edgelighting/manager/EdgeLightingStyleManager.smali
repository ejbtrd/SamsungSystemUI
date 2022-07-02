.class public Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;
.super Ljava/lang/Object;
.source "EdgeLightingStyleManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EdgeLightingStyleManager"

.field private static mInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;


# instance fields
.field protected mStyleHashMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    .line 49
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->setDefaultStyleList()V

    .line 50
    sget-boolean v0, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_BASIC_LIGHTING:Z

    if-nez v0, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->filterOutUnsupportedStyle()V

    :cond_0
    return-void
.end method

.method private filterOutUnsupportedStyle()V
    .locals 5

    .line 164
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 165
    iget-object v1, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    .line 166
    invoke-virtual {v2}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "preload/basic"

    .line 167
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "preload/wave"

    .line 168
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "preload/gradation"

    .line 169
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "preload/glow"

    .line 170
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "preload/reflection"

    .line 171
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {v0, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 176
    :cond_2
    iput-object v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;
    .locals 1

    .line 42
    sget-object v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    invoke-direct {v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;-><init>()V

    sput-object v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    .line 45
    :cond_0
    sget-object v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    return-object v0
.end method

.method public static isSupportEffectForRoutine(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "preload/bubble"

    .line 154
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "preload/wave"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "preload/heart"

    .line 155
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "preload/fireworks"

    .line 156
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "preload/eclipse"

    .line 157
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private setDefaultStyleList()V
    .locals 19

    move-object/from16 v0, p0

    .line 56
    iget-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 57
    iget-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    new-instance v11, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    sget v7, Lcom/android/systemui/R$string;->edge_lighting_style_noframe:I

    sget v8, Lcom/android/systemui/R$string;->edge_lighting_style_noframe_effect:I

    sget v9, Lcom/android/systemui/R$drawable;->noframe_effect_thumbnail:I

    const-string v3, "preload/noframe"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x1

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;-><init>(Ljava/lang/String;ZZZIIIZ)V

    const-string v2, "preload/noframe"

    invoke-virtual {v1, v2, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    new-instance v9, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    sget-boolean v18, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_BASIC_LIGHTING:Z

    sget v6, Lcom/android/systemui/R$string;->edge_lighting_style_basic:I

    sget v7, Lcom/android/systemui/R$string;->edge_lighting_style_basic_effect:I

    sget v8, Lcom/android/systemui/R$drawable;->basic_effect_thumbnail:I

    const-string v3, "preload/basic"

    move-object v2, v9

    move/from16 v5, v18

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;-><init>(Ljava/lang/String;ZZIII)V

    const-string v2, "preload/basic"

    invoke-virtual {v1, v2, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    new-instance v2, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    sget v14, Lcom/android/systemui/R$string;->edge_lighting_style_wave:I

    sget v15, Lcom/android/systemui/R$string;->edge_lighting_style_wave_effect:I

    sget v16, Lcom/android/systemui/R$drawable;->wave_effect_thumbnail:I

    sget-boolean v17, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_COCKTAIL_COLOR_PHONE_COLOR:Z

    const-string v11, "preload/wave"

    const/4 v12, 0x1

    move-object v10, v2

    move/from16 v13, v18

    invoke-direct/range {v10 .. v17}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;-><init>(Ljava/lang/String;ZZIIIZ)V

    const-string v3, "preload/wave"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "preload/bubble"

    if-nez v18, :cond_0

    .line 73
    iget-object v2, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    new-instance v3, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    const/4 v12, 0x1

    sget v14, Lcom/android/systemui/R$string;->edge_lighting_style_bubble:I

    sget v15, Lcom/android/systemui/R$string;->edge_lighting_style_bubble_effect:I

    sget v16, Lcom/android/systemui/R$drawable;->bubble_effect_thumbnail_without_line:I

    sget-boolean v17, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_COCKTAIL_COLOR_PHONE_COLOR:Z

    const-string v11, "preload/bubble"

    move-object v10, v3

    move/from16 v13, v18

    invoke-direct/range {v10 .. v17}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;-><init>(Ljava/lang/String;ZZIIIZ)V

    invoke-virtual {v2, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 79
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    new-instance v3, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    const/4 v12, 0x1

    sget v14, Lcom/android/systemui/R$string;->edge_lighting_style_bubble:I

    sget v15, Lcom/android/systemui/R$string;->edge_lighting_style_bubble_effect:I

    sget v16, Lcom/android/systemui/R$drawable;->bubble_effect_thumbnail:I

    sget-boolean v17, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_COCKTAIL_COLOR_PHONE_COLOR:Z

    const-string v11, "preload/bubble"

    move-object v10, v3

    move/from16 v13, v18

    invoke-direct/range {v10 .. v17}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;-><init>(Ljava/lang/String;ZZIIIZ)V

    invoke-virtual {v2, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :goto_0
    iget-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    new-instance v9, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    const/4 v4, 0x1

    sget v6, Lcom/android/systemui/R$string;->edge_lighting_style_multicolor:I

    sget v7, Lcom/android/systemui/R$string;->edge_lighting_style_multicolor_effect:I

    sget v8, Lcom/android/systemui/R$drawable;->gradation_effect_thumbnail:I

    const-string v3, "preload/gradation"

    move-object v2, v9

    move/from16 v5, v18

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;-><init>(Ljava/lang/String;ZZIII)V

    const-string v2, "preload/gradation"

    invoke-virtual {v1, v2, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    new-instance v9, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    sget v6, Lcom/android/systemui/R$string;->edge_lighting_style_glow:I

    sget v7, Lcom/android/systemui/R$string;->edge_lighting_style_glow_effect:I

    sget v8, Lcom/android/systemui/R$drawable;->glow_effect_thumbnail:I

    const-string v3, "preload/glow"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;-><init>(Ljava/lang/String;ZZIII)V

    const-string v2, "preload/glow"

    invoke-virtual {v1, v2, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    new-instance v9, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    sget v6, Lcom/android/systemui/R$string;->edge_lighting_style_glitter:I

    sget v7, Lcom/android/systemui/R$string;->edge_lighting_style_glitter_effect:I

    sget v8, Lcom/android/systemui/R$drawable;->glitter_effect_thumbnail:I

    const-string v3, "preload/reflection"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;-><init>(Ljava/lang/String;ZZIII)V

    const-string v2, "preload/reflection"

    invoke-virtual {v1, v2, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    new-instance v2, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    const/4 v12, 0x1

    sget v14, Lcom/android/systemui/R$string;->edge_lighting_style_heart:I

    sget v15, Lcom/android/systemui/R$string;->edge_lighting_style_heart_effect:I

    if-eqz v18, :cond_1

    .line 102
    sget v3, Lcom/android/systemui/R$drawable;->heart_effect_thumbnail:I

    goto :goto_1

    :cond_1
    sget v3, Lcom/android/systemui/R$drawable;->heart_effect_thumbnail_without_line:I

    :goto_1
    move/from16 v16, v3

    sget-boolean v17, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_COCKTAIL_COLOR_PHONE_COLOR:Z

    const-string v11, "preload/heart"

    move-object v10, v2

    move/from16 v13, v18

    invoke-direct/range {v10 .. v17}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;-><init>(Ljava/lang/String;ZZIIIZ)V

    const-string v3, "preload/heart"

    .line 98
    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    new-instance v2, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    const/4 v12, 0x1

    sget v14, Lcom/android/systemui/R$string;->edge_lighting_style_fireworks:I

    sget v15, Lcom/android/systemui/R$string;->edge_lighting_style_fireworks_effect:I

    if-eqz v18, :cond_2

    .line 108
    sget v3, Lcom/android/systemui/R$drawable;->fireworks_effect_thumbnail:I

    goto :goto_2

    :cond_2
    sget v3, Lcom/android/systemui/R$drawable;->fireworks_effect_thumbnail_without_line:I

    :goto_2
    move/from16 v16, v3

    sget-boolean v17, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_COCKTAIL_COLOR_PHONE_COLOR:Z

    const-string v11, "preload/fireworks"

    move-object v10, v2

    move/from16 v13, v18

    invoke-direct/range {v10 .. v17}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;-><init>(Ljava/lang/String;ZZIIIZ)V

    const-string v3, "preload/fireworks"

    .line 104
    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    new-instance v10, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget v6, Lcom/android/systemui/R$string;->edge_lighting_style_eclipse:I

    sget v7, Lcom/android/systemui/R$string;->edge_lighting_style_eclipse_effect:I

    sget v8, Lcom/android/systemui/R$drawable;->eclipse_effect_thumbnail:I

    sget-boolean v9, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_COCKTAIL_COLOR_PHONE_COLOR:Z

    const-string v3, "preload/eclipse"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;-><init>(Ljava/lang/String;ZZIIIZ)V

    const-string v2, "preload/eclipse"

    invoke-virtual {v1, v2, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    new-instance v10, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    sget v6, Lcom/android/systemui/R$string;->edge_lighting_style_echo:I

    sget v7, Lcom/android/systemui/R$string;->edge_lighting_style_echo_effect:I

    sget v8, Lcom/android/systemui/R$drawable;->echo_effect_thumbnail:I

    sget-boolean v9, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_COCKTAIL_COLOR_PHONE_COLOR:Z

    const-string v3, "preload/echo"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;-><init>(Ljava/lang/String;ZZIIIZ)V

    const-string v2, "preload/echo"

    invoke-virtual {v1, v2, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    new-instance v9, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget v5, Lcom/android/systemui/R$string;->edge_lighting_style_spotlight:I

    sget v6, Lcom/android/systemui/R$string;->edge_lighting_style_spotlight_effect:I

    sget v7, Lcom/android/systemui/R$drawable;->spotlight_effect_thumbnail:I

    sget-boolean v8, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_COCKTAIL_COLOR_PHONE_COLOR:Z

    const-string v2, "preload/spotlight"

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;-><init>(Ljava/lang/String;ZZIIIZ)V

    const-string v1, "preload/spotlight"

    invoke-virtual {v0, v1, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getDefalutStyle()Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;
    .locals 1

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    return-object p0
.end method

.method public getEdgeLightingStyleType(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 10

    const-string v0, "edge_lighting_style_type"

    const/4 v1, -0x1

    const/4 v2, -0x2

    .line 264
    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 266
    sget-object v4, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEdgeLightingStyleType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v6, "preload/noframe"

    const-string v7, "edge_lighting_style_type_str"

    if-ltz v3, :cond_b

    .line 268
    new-instance v8, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 269
    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    if-eqz v3, :cond_9

    const/4 v0, 0x1

    if-eq v3, v0, :cond_6

    if-eq v3, v4, :cond_3

    const/4 v0, 0x3

    if-eq v3, v0, :cond_0

    goto/16 :goto_0

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    const-string v3, "preload/reflection"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    invoke-static {p1, v7, v3, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 323
    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_2

    .line 326
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-static {p1, v7, v0, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 330
    :cond_2
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-static {p1, v7, v0, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 301
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    const-string v1, "preload/glow"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 302
    invoke-static {p1, v7, v1, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 306
    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_5

    .line 309
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-static {p1, v7, v0, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 313
    :cond_5
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-static {p1, v7, v0, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 284
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    const-string v3, "preload/gradation"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 285
    invoke-static {p1, v7, v3, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 289
    :cond_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_8

    .line 292
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-static {p1, v7, v0, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 296
    :cond_8
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-static {p1, v7, v0, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 273
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 274
    invoke-static {p1, v7, v6, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 280
    :cond_a
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-static {p1, v7, v0, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 336
    :cond_b
    :goto_0
    invoke-static {p1, v7, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    .line 339
    iget-object p1, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    return-object v6

    .line 342
    :cond_c
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const-string v1, "/"

    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-gt v1, v4, :cond_f

    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_1

    :cond_e
    return-object v0

    .line 346
    :cond_f
    :goto_1
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object p0

    invoke-virtual {p0, p1, v6}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->setEdgeLightingStyleType(Landroid/content/ContentResolver;Ljava/lang/String;)V

    return-object v6
.end method

.method public getPreloadIndex(Ljava/lang/String;)I
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "preload/noframe"

    .line 228
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "preload/basic"

    .line 230
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string v0, "preload/gradation"

    .line 232
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const-string v0, "preload/glow"

    .line 234
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const-string v0, "preload/reflection"

    .line 236
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    const-string v0, "preload/wave"

    .line 238
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p0, 0x5

    return p0

    :cond_5
    const-string v0, "preload/bubble"

    .line 240
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x6

    return p0

    :cond_6
    const-string v0, "preload/heart"

    .line 242
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p0, 0x7

    return p0

    :cond_7
    const-string v0, "preload/fireworks"

    .line 244
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p0, 0x8

    return p0

    :cond_8
    const-string v0, "preload/eclipse"

    .line 246
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p0, 0x9

    return p0

    :cond_9
    const-string v0, "preload/echo"

    .line 248
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 p0, 0xa

    return p0

    :cond_a
    const-string v0, "preload/spotlight"

    .line 250
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const/16 p0, 0xb

    return p0

    .line 258
    :cond_b
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 259
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getPreloadIndex(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_c
    const/16 p0, 0x64

    return p0
.end method

.method public getSelectSupportingStyleByRoutine()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;",
            ">;"
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 141
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->isSupportEffectForRoutine(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public getStyleByKey(Ljava/lang/String;)Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;
    .locals 0

    .line 219
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    return-object p0
.end method

.method public getStyleDisplayOrder(Ljava/lang/String;Z)I
    .locals 3

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 206
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getSupportStyleCount(Z)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 207
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    invoke-virtual {v2}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getStyleList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;",
            ">;"
        }
    .end annotation

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportStyleCount(Z)I
    .locals 1

    .line 197
    sget-boolean v0, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_COCKTAIL_COLOR_PHONE_COLOR:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 198
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p0

    return p0

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getSelectSupportingStyleByRoutine()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public setEdgeLightingStyleType(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1

    const-string p0, "edge_lighting_style_type_str"

    const/4 v0, -0x2

    .line 215
    invoke-static {p1, p0, p2, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method
