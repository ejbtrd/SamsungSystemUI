.class public final Lcom/android/systemui/controls/ui/CustomRenderInfo$Companion;
.super Ljava/lang/Object;
.source "CustomRenderInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/ui/CustomRenderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomRenderInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomRenderInfo.kt\ncom/android/systemui/controls/ui/CustomRenderInfo$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,92:1\n1#2:93\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/controls/ui/CustomRenderInfo$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearCache()V
    .locals 0

    .line 51
    sget-boolean p0, Lcom/android/systemui/BasicRune;->CONTROLS_CUSTOM_MAIN_ACTION_ICON:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/systemui/controls/ui/CustomRenderInfo;->access$getActionIconMap$cp()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 52
    :cond_0
    sget-boolean p0, Lcom/android/systemui/BasicRune;->CONTROLS_CUSTOM_STATUS:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/systemui/controls/ui/CustomRenderInfo;->access$getStatusIconDrawableMap$cp()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    :cond_1
    return-void
.end method

.method public final getDeviceCustomColor(I)Lkotlin/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    invoke-static {}, Lcom/android/systemui/controls/ui/CustomRenderInfoKt;->access$getDeviceCustomColorMap$p()Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    return-object p0
.end method

.method public final lookupActionIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/android/systemui/controls/ui/CustomRenderInfoKt;->access$getDefaultActionIconMap$p()Ljava/util/Map;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0, p2}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 32
    invoke-static {}, Lcom/android/systemui/controls/ui/CustomRenderInfo;->access$getActionIconMap$cp()Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_0

    sget-object p2, Lcom/android/systemui/controls/ui/CustomRenderInfo;->Companion:Lcom/android/systemui/controls/ui/CustomRenderInfo$Companion;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 34
    invoke-static {}, Lcom/android/systemui/controls/ui/CustomRenderInfo;->access$getActionIconMap$cp()Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    :cond_0
    const-string p0, "defaultActionIconMap.getValue(key).let { resourceId ->\n                actionIconMap[resourceId] ?: run {\n                    context.resources.getDrawable(resourceId, null)\n                        .also { actionIconMap[resourceId] = it }\n                }\n            }"

    .line 31
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method public final lookupStatusIcon(Landroid/content/Context;Landroid/service/controls/Control;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/service/controls/Control;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {}, Lcom/android/systemui/controls/ui/CustomRenderInfoKt;->access$getStatusIconResourceMap$p()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Landroid/service/controls/Control;->getStatusIconType()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 42
    invoke-static {}, Lcom/android/systemui/controls/ui/CustomRenderInfo;->access$getStatusIconDrawableMap$cp()Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_2

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 44
    invoke-static {}, Lcom/android/systemui/controls/ui/CustomRenderInfo;->access$getStatusIconDrawableMap$cp()Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    :cond_2
    move-object p0, p2

    :goto_0
    return-object p0
.end method
