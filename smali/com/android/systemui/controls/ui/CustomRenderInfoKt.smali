.class public final Lcom/android/systemui/controls/ui/CustomRenderInfoKt;
.super Ljava/lang/Object;
.source "CustomRenderInfo.kt"


# static fields
.field private static final defaultActionIconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final deviceCustomColorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final statusIconResourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/Pair;

    const v1, 0xbf69

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 62
    new-instance v2, Lkotlin/Pair;

    sget v3, Lcom/android/systemui/R$color;->control_custom_default_foreground:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$color;->control_custom_default_background:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0xbf6a

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 64
    new-instance v3, Lkotlin/Pair;

    .line 65
    sget v4, Lcom/android/systemui/R$color;->custom_thermo_heat_foreground:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 66
    sget v5, Lcom/android/systemui/R$color;->control_custom_enabled_thermo_heat_background:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 64
    invoke-direct {v3, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const v1, 0xbf6b

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 69
    new-instance v4, Lkotlin/Pair;

    .line 70
    sget v5, Lcom/android/systemui/R$color;->custom_thermo_cool_foreground:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 71
    sget v6, Lcom/android/systemui/R$color;->control_custom_enabled_thermo_cool_background:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 69
    invoke-direct {v4, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    invoke-static {v1, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/16 v1, 0xd

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 74
    new-instance v5, Lkotlin/Pair;

    sget v6, Lcom/android/systemui/R$color;->custom_light_foreground:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget v7, Lcom/android/systemui/R$color;->control_custom_enabled_light_background:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    invoke-static {v1, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const/16 v1, 0x32

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 76
    new-instance v5, Lkotlin/Pair;

    sget v6, Lcom/android/systemui/R$color;->camera_foreground:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget v7, Lcom/android/systemui/R$color;->control_enabled_default_background:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    invoke-static {v1, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v5, 0x4

    aput-object v1, v0, v5

    .line 60
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 77
    sget-object v1, Lcom/android/systemui/controls/ui/CustomRenderInfoKt$deviceCustomColorMap$1;->INSTANCE:Lcom/android/systemui/controls/ui/CustomRenderInfoKt$deviceCustomColorMap$1;

    invoke-static {v0, v1}, Lkotlin/collections/MapsKt;->withDefault(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/controls/ui/CustomRenderInfoKt;->deviceCustomColorMap:Ljava/util/Map;

    .line 82
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 83
    sget-object v1, Lcom/android/systemui/controls/ui/CustomRenderInfoKt$defaultActionIconMap$1;->INSTANCE:Lcom/android/systemui/controls/ui/CustomRenderInfoKt$defaultActionIconMap$1;

    invoke-static {v0, v1}, Lkotlin/collections/MapsKt;->withDefault(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/controls/ui/CustomRenderInfoKt;->defaultActionIconMap:Ljava/util/Map;

    new-array v0, v4, [Lkotlin/Pair;

    .line 89
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v5, Lcom/android/systemui/R$drawable;->ic_control_error:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v2

    .line 90
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$drawable;->ic_control_scene_badge_failed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v3

    .line 88
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/controls/ui/CustomRenderInfoKt;->statusIconResourceMap:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getDefaultActionIconMap$p()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/controls/ui/CustomRenderInfoKt;->defaultActionIconMap:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getDeviceCustomColorMap$p()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/controls/ui/CustomRenderInfoKt;->deviceCustomColorMap:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getStatusIconResourceMap$p()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/controls/ui/CustomRenderInfoKt;->statusIconResourceMap:Ljava/util/Map;

    return-object v0
.end method
