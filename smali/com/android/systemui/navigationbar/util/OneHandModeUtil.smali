.class public final Lcom/android/systemui/navigationbar/util/OneHandModeUtil;
.super Ljava/lang/Object;
.source "OneHandModeUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/navigationbar/util/OneHandModeUtil$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/navigationbar/util/OneHandModeUtil$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static oneHandModeInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private settingsHelper:Lcom/android/systemui/util/SettingsHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/navigationbar/util/OneHandModeUtil$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/util/OneHandModeUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/navigationbar/util/OneHandModeUtil;->Companion:Lcom/android/systemui/navigationbar/util/OneHandModeUtil$Companion;

    .line 12
    new-instance v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;-><init>(IIF)V

    sput-object v0, Lcom/android/systemui/navigationbar/util/OneHandModeUtil;->oneHandModeInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/SettingsHelper;)V
    .locals 1
    .param p1    # Lcom/android/systemui/util/SettingsHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "settingsHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/systemui/navigationbar/util/OneHandModeUtil;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method

.method public static final synthetic access$getOneHandModeInfo$cp()Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;
    .locals 1

    .line 8
    sget-object v0, Lcom/android/systemui/navigationbar/util/OneHandModeUtil;->oneHandModeInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    return-object v0
.end method

.method public static final synthetic access$setOneHandModeInfo$cp(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;)V
    .locals 0

    .line 8
    sput-object p0, Lcom/android/systemui/navigationbar/util/OneHandModeUtil;->oneHandModeInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    return-void
.end method


# virtual methods
.method public final getRegionSamplingBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "samplingBounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object p0, p0, Lcom/android/systemui/navigationbar/util/OneHandModeUtil;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isOneHandModeRunning()Z

    move-result p0

    if-nez p0, :cond_0

    return-object p1

    .line 18
    :cond_0
    sget-object p0, Lcom/android/systemui/navigationbar/util/OneHandModeUtil;->Companion:Lcom/android/systemui/navigationbar/util/OneHandModeUtil$Companion;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/util/OneHandModeUtil$Companion;->getOneHandModeInfo()Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;->getOffsetX()I

    move-result v0

    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/util/OneHandModeUtil$Companion;->getOneHandModeInfo()Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;->getOffsetY()I

    move-result v1

    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/util/OneHandModeUtil$Companion;->getOneHandModeInfo()Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;->getScale()F

    move-result p0

    .line 21
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 23
    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, p0

    int-to-float v0, v0

    add-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 24
    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, p0

    int-to-float v1, v1

    add-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 25
    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    mul-float/2addr v3, p0

    add-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 26
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    mul-float/2addr p1, p0

    add-float/2addr p1, v1

    float-to-int p0, p1

    iput p0, v2, Landroid/graphics/Rect;->bottom:I

    return-object v2
.end method
