.class public final Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;
.super Ljava/lang/Object;
.source "StatusBarContentInsetsProvider.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsChangedListener;",
        ">;",
        "Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;",
        "Lcom/android/systemui/Dumpable;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStatusBarContentInsetsProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StatusBarContentInsetsProvider.kt\ncom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,563:1\n1819#2,2:564\n1819#2,2:566\n13571#3,3:568\n*E\n*S KotlinDebug\n*F\n+ 1 StatusBarContentInsetsProvider.kt\ncom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider\n*L\n130#1,2:564\n136#1,2:566\n296#1,3:568\n*E\n"
.end annotation


# instance fields
.field private final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dumpManager:Lcom/android/systemui/dump/DumpManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final insetsByCorner:[Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsChangedListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final privacyInsetListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/statusbar/phone/PrivacyInsetsChangedListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private privacyInsetsCallback:Lcom/android/systemui/statusbar/events/PrivacyDotViewController$PrivacyInsetsCallback;

.field private final windowManager:Landroid/view/WindowManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/view/WindowManager;Lcom/android/systemui/dump/DumpManager;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/statusbar/policy/ConfigurationController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/WindowManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/dump/DumpManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "windowManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dumpManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 64
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->windowManager:Landroid/view/WindowManager;

    .line 65
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    const/4 p1, 0x4

    new-array p1, p1, [Landroid/graphics/Rect;

    .line 70
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->insetsByCorner:[Landroid/graphics/Rect;

    .line 71
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->listeners:Ljava/util/Set;

    .line 73
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->privacyInsetListeners:Ljava/util/Set;

    .line 78
    invoke-interface {p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    const-string p1, "StatusBarInsetsProvider"

    .line 79
    invoke-virtual {p4, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method private final clearCachedInsets()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->insetsByCorner:[Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 121
    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 122
    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 123
    aput-object v2, v0, v1

    .line 125
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->notifyInsetsChanged()V

    return-void
.end method

.method private final getAndSetInsetsForRotation(ILandroid/content/res/Resources;)Landroid/graphics/Rect;
    .locals 0

    .line 206
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getCalculatedInsetsForRotation(ILandroid/content/res/Resources;)Landroid/graphics/Rect;

    move-result-object p2

    .line 207
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->insetsByCorner:[Landroid/graphics/Rect;

    aput-object p2, p0, p1

    return-object p2
.end method

.method private final getAndSetInsetsForRotationAndNavigationBar(ILandroid/content/res/Resources;Landroid/view/WindowInsets;)Landroid/graphics/Rect;
    .locals 0

    .line 196
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getCalculatedInsetsForRotationAndNavigationBar(ILandroid/content/res/Resources;Landroid/view/WindowInsets;)Landroid/graphics/Rect;

    move-result-object p2

    .line 197
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->insetsByCorner:[Landroid/graphics/Rect;

    aput-object p2, p0, p1

    return-object p2
.end method

.method private final getCalculatedInsetsForRotation(ILandroid/content/res/Resources;)Landroid/graphics/Rect;
    .locals 9

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v3

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    move-result v1

    .line 268
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 270
    :goto_0
    sget v0, Lcom/android/systemui/R$dimen;->rounded_corner_content_padding:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 272
    sget v4, Lcom/android/systemui/R$dimen;->ongoing_appops_dot_min_padding:I

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-eqz v2, :cond_1

    .line 277
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v7, v0

    move v6, v2

    goto :goto_1

    .line 281
    :cond_1
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v6, v0

    move v7, v2

    .line 288
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v4

    const-string/jumbo v0, "windowManager.maximumWindowMetrics"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    sget v0, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 292
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProviderKt;->access$isUDCMainDisplay(Landroid/content/Context;)Z

    move-result v8

    move v2, p1

    .line 284
    invoke-static/range {v1 .. v8}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProviderKt;->calculateInsetsForRotationWithRotatedResources(IILandroid/view/DisplayCutout;Landroid/view/WindowMetrics;IIIZ)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private final getCalculatedInsetsForRotationAndNavigationBar(ILandroid/content/res/Resources;Landroid/view/WindowInsets;)Landroid/graphics/Rect;
    .locals 10

    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v3

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    move-result v1

    .line 221
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 223
    :goto_0
    sget v0, Lcom/android/systemui/R$dimen;->rounded_corner_content_padding:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 225
    sget v4, Lcom/android/systemui/R$dimen;->ongoing_appops_dot_min_padding:I

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-eqz v2, :cond_1

    .line 230
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_1

    .line 234
    :cond_1
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v9, v4

    move v4, v0

    move v0, v9

    .line 237
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProviderKt;->access$isUDCMainDisplay(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v2, :cond_2

    .line 242
    invoke-virtual {p3}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result p3

    .line 243
    invoke-static {v4, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    move v6, p3

    move v7, v0

    goto :goto_3

    .line 245
    :cond_2
    invoke-virtual {p3}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result p3

    .line 246
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    move v7, p3

    goto :goto_2

    :cond_3
    move v7, v0

    :goto_2
    move v6, v4

    .line 254
    :goto_3
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->windowManager:Landroid/view/WindowManager;

    invoke-interface {p3}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v4

    const-string/jumbo p3, "windowManager.maximumWindowMetrics"

    invoke-static {v4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    sget p3, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 258
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProviderKt;->access$isUDCMainDisplay(Landroid/content/Context;)Z

    move-result v8

    move v2, p1

    .line 250
    invoke-static/range {v1 .. v8}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProviderKt;->calculateInsetsForRotationWithRotatedResources(IILandroid/view/DisplayCutout;Landroid/view/WindowMetrics;IIIZ)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private final notifyInsetsChanged()V
    .locals 1

    .line 136
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->listeners:Ljava/util/Set;

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsChangedListener;

    .line 137
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsChangedListener;->onStatusBarContentInsetsChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/statusbar/phone/PrivacyInsetsChangedListener;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/phone/PrivacyInsetsChangedListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->privacyInsetListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addCallback(Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsChangedListener;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsChangedListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->listeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsChangedListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->addCallback(Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsChangedListener;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/PrintWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "pw"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "args"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->insetsByCorner:[Landroid/graphics/Rect;

    .line 13572
    array-length p1, p0

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    if-ge p3, p1, :cond_0

    aget-object v1, p0, p3

    add-int/lit8 v2, v0, 0x1

    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    move v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getBoundingRectForPrivacyChipForRotation(I)Landroid/graphics/Rect;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->insetsByCorner:[Landroid/graphics/Rect;

    aget-object v0, v0, p1

    .line 163
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/systemui/util/leak/RotationUtils;->getResourcesForRotation(ILandroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v1

    if-nez v0, :cond_0

    const-string/jumbo v0, "rotatedResources"

    .line 165
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getAndSetInsetsForRotation(ILandroid/content/res/Resources;)Landroid/graphics/Rect;

    move-result-object v0

    .line 168
    :cond_0
    sget p1, Lcom/android/systemui/R$dimen;->ongoing_appops_dot_diameter:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 170
    sget v2, Lcom/android/systemui/R$dimen;->ongoing_appops_chip_max_width:I

    .line 169
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 172
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 173
    :goto_0
    invoke-static {v0, p1, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProviderKt;->getPrivacyChipBoundingRectForInsets(Landroid/graphics/Rect;IIZ)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final getBoundingRectForPrivacyChipForRotationAndNavigationBar(ILandroid/view/WindowInsets;)Landroid/graphics/Rect;
    .locals 2
    .param p2    # Landroid/view/WindowInsets;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "windowInsets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/systemui/util/leak/RotationUtils;->getResourcesForRotation(ILandroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "rotatedResources"

    .line 147
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getAndSetInsetsForRotationAndNavigationBar(ILandroid/content/res/Resources;Landroid/view/WindowInsets;)Landroid/graphics/Rect;

    move-result-object p1

    .line 149
    sget p2, Lcom/android/systemui/R$dimen;->ongoing_appops_dot_diameter:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 151
    sget v1, Lcom/android/systemui/R$dimen;->ongoing_appops_chip_max_width:I

    .line 150
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 153
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 154
    :goto_0
    invoke-static {p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProviderKt;->getPrivacyChipBoundingRectForInsets(Landroid/graphics/Rect;IIZ)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final getStatusBarContentInsetsForRotation(I)Landroid/graphics/Rect;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->insetsByCorner:[Landroid/graphics/Rect;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/systemui/util/leak/RotationUtils;->getResourcesForRotation(ILandroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "rotatedResources"

    .line 184
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getAndSetInsetsForRotation(ILandroid/content/res/Resources;)Landroid/graphics/Rect;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final notifyWindowInsetsChanged(Landroid/view/WindowInsets;)V
    .locals 3
    .param p1    # Landroid/view/WindowInsets;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "windowInsets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->privacyInsetListeners:Ljava/util/Set;

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/PrivacyInsetsChangedListener;

    .line 131
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->privacyInsetsCallback:Lcom/android/systemui/statusbar/events/PrivacyDotViewController$PrivacyInsetsCallback;

    if-eqz v2, :cond_0

    invoke-interface {v1, p1, v2}, Lcom/android/systemui/statusbar/phone/PrivacyInsetsChangedListener;->onWindowInsetsChanged(Landroid/view/WindowInsets;Lcom/android/systemui/statusbar/events/PrivacyDotViewController$PrivacyInsetsCallback;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "privacyInsetsCallback"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->clearCachedInsets()V

    return-void
.end method

.method public onLayoutDirectionChanged(Z)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->clearCachedInsets()V

    return-void
.end method

.method public onOverlayChanged()V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->clearCachedInsets()V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsChangedListener;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsChangedListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->listeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsChangedListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->removeCallback(Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsChangedListener;)V

    return-void
.end method

.method public final setPrivacyInsetsCallback(Lcom/android/systemui/statusbar/events/PrivacyDotViewController$PrivacyInsetsCallback;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/events/PrivacyDotViewController$PrivacyInsetsCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->privacyInsetsCallback:Lcom/android/systemui/statusbar/events/PrivacyDotViewController$PrivacyInsetsCallback;

    return-void
.end method
