.class public final Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;
.super Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;
.source "KeyguardTouchAnimator.kt"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$CustomAnimatorListenerAdapter;,
        Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKeyguardTouchAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeyguardTouchAnimator.kt\ncom/android/systemui/keyguard/animator/KeyguardTouchAnimator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,719:1\n1819#2,2:720\n1819#2,2:722\n1517#2:727\n1588#2,3:728\n734#2:731\n825#2,2:732\n1819#2,2:734\n1517#2:739\n1588#2,3:740\n1819#2,2:743\n1517#2:748\n1588#2,3:749\n734#2:752\n825#2,2:753\n1828#2,3:755\n1517#2:761\n1588#2,3:762\n734#2:765\n825#2,2:766\n1819#2,2:768\n1819#2,2:773\n1517#2:778\n1588#2,3:779\n734#2:782\n825#2,2:783\n1819#2,2:785\n1517#2:790\n1588#2,3:791\n734#2:794\n825#2,2:795\n1819#2,2:797\n1517#2:802\n1588#2,3:803\n734#2:806\n825#2,2:807\n1819#2,2:809\n1517#2:814\n1588#2,3:815\n734#2:818\n825#2,2:819\n1819#2,2:821\n3782#3:724\n4300#3,2:725\n3782#3:736\n4300#3,2:737\n3782#3:745\n4300#3,2:746\n3782#3:758\n4300#3,2:759\n3782#3:770\n4300#3,2:771\n3782#3:775\n4300#3,2:776\n3782#3:787\n4300#3,2:788\n3782#3:799\n4300#3,2:800\n3782#3:811\n4300#3,2:812\n*E\n*S KotlinDebug\n*F\n+ 1 KeyguardTouchAnimator.kt\ncom/android/systemui/keyguard/animator/KeyguardTouchAnimator\n*L\n289#1,2:720\n294#1,2:722\n362#1:727\n362#1,3:728\n362#1:731\n362#1,2:732\n364#1,2:734\n393#1:739\n393#1,3:740\n393#1,2:743\n402#1:748\n402#1,3:749\n402#1:752\n402#1,2:753\n404#1,3:755\n429#1:761\n429#1,3:762\n429#1:765\n429#1,2:766\n431#1,2:768\n449#1,2:773\n472#1:778\n472#1,3:779\n472#1:782\n472#1,2:783\n473#1,2:785\n482#1:790\n482#1,3:791\n482#1:794\n482#1,2:795\n483#1,2:797\n509#1:802\n509#1,3:803\n509#1:806\n509#1,2:807\n510#1,2:809\n523#1:814\n523#1,3:815\n523#1:818\n523#1,2:819\n524#1,2:821\n362#1:724\n362#1,2:725\n393#1:736\n393#1,2:737\n402#1:745\n402#1,2:746\n429#1:758\n429#1,2:759\n449#1:770\n449#1,2:771\n472#1:775\n472#1,2:776\n482#1:787\n482#1,2:788\n509#1:799\n509#1,2:800\n523#1:811\n523#1,2:812\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DRAG_VIEWS:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FULLSCREEN_VIEWS:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ONLY_ALPHA_DRAG_VIEWS:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PIVOT_VIEWS:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SINE_IN_33:Landroid/view/animation/Interpolator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SINE_OUT_33:Landroid/view/animation/Interpolator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAP_AFFORDANCE_VIEWS:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final animatedViewIds:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private callback:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;

.field private final dymLockInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private fullScreenAnimatorSet:Landroid/animation/AnimatorSet;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final gestureDetector:Landroid/view/GestureDetector;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isFullScreenModeShown:Z

.field private isFullscreenModeEnabled:Z

.field private isTapAnimationRunning:Z

.field private final loggingInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchLoggingInjector;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final longPressCallback:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private notiScale:F

.field private final parentView$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pivot:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Ljava/util/function/Function<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/function/Function<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private restoreAnimatorSet:Landroid/animation/AnimatorSet;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final restoreSpringAnimRunnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private restoreSpringAnimationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/dynamicanimation/animation/SpringAnimation;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sbStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final securityInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private tapSpringAnimationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/dynamicanimation/animation/SpringAnimation;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private unlockViewHideAnimatorSet:Landroid/animation/AnimatorSet;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

.field private final views:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->Companion:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$Companion;

    .line 655
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b    # 0.17f

    const v2, 0x3f2b851f    # 0.67f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->SINE_OUT_33:Landroid/view/animation/Interpolator;

    .line 656
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f547ae1    # 0.83f

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->SINE_IN_33:Landroid/view/animation/Interpolator;

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 676
    fill-array-data v0, :array_0

    .line 675
    sput-object v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->DRAG_VIEWS:[I

    const/4 v0, 0x6

    new-array v1, v0, [I

    .line 681
    fill-array-data v1, :array_1

    .line 680
    sput-object v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->PIVOT_VIEWS:[I

    const/16 v1, 0xb

    new-array v1, v1, [I

    .line 685
    fill-array-data v1, :array_2

    .line 684
    sput-object v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->FULLSCREEN_VIEWS:[I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 689
    sput-object v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->TAP_AFFORDANCE_VIEWS:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 693
    fill-array-data v0, :array_3

    .line 692
    sput-object v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->ONLY_ALPHA_DRAG_VIEWS:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x8
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x0
        0x7
        0x8
        0x9
        0xa
    .end array-data

    :array_3
    .array-data 4
        0x6
        0x7
        0x9
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/PowerManager;Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;Lcom/android/systemui/keyguard/animator/KeyguardTouchLoggingInjector;Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/keyguard/KeyguardUpdateMonitor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/PowerManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/keyguard/animator/KeyguardTouchLoggingInjector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/systemui/plugins/statusbar/StatusBarStateController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/android/systemui/util/SettingsHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardUpdateMonitor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "powerManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dymLockInjector"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggingInjector"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "securityInjector"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sbStateController"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "settingsHelper"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 47
    iput-object p4, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->dymLockInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    .line 48
    iput-object p5, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->loggingInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchLoggingInjector;

    .line 49
    iput-object p6, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->securityInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;

    .line 50
    iput-object p7, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->sbStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 51
    iput-object p8, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 54
    new-instance p2, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$parentView$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$parentView$2;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->parentView$delegate:Lkotlin/Lazy;

    .line 58
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->views:Landroid/util/SparseArray;

    .line 59
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->pivot:Landroid/util/SparseArray;

    .line 60
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->unlockViewHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 61
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->restoreAnimatorSet:Landroid/animation/AnimatorSet;

    .line 62
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->fullScreenAnimatorSet:Landroid/animation/AnimatorSet;

    .line 65
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->tapSpringAnimationList:Ljava/util/List;

    .line 66
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->restoreSpringAnimationList:Ljava/util/List;

    .line 67
    new-instance p2, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$restoreSpringAnimRunnable$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$restoreSpringAnimRunnable$1;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    iput-object p2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->restoreSpringAnimRunnable:Ljava/lang/Runnable;

    const/4 p2, 0x7

    new-array p2, p2, [I

    .line 68
    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->animatedViewIds:[I

    .line 70
    new-instance p2, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$longPressCallback$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$longPressCallback$1;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    iput-object p2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->longPressCallback:Ljava/lang/Runnable;

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->initDimens()V

    .line 79
    sget-object p2, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$1;->INSTANCE:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$1;

    .line 80
    new-instance p5, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$2;

    invoke-direct {p5, p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$2;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    const/4 p6, 0x1

    .line 78
    invoke-direct {p0, p6, p2, p5}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->initPivot(ILjava/util/function/Function;Ljava/util/function/Function;)V

    .line 82
    sget-object p2, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$3;->INSTANCE:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$3;

    .line 83
    new-instance p5, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$4;

    invoke-direct {p5, p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$4;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    const/16 p6, 0x8

    .line 81
    invoke-direct {p0, p6, p2, p5}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->initPivot(ILjava/util/function/Function;Ljava/util/function/Function;)V

    .line 85
    sget-object p2, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$5;->INSTANCE:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$5;

    .line 86
    new-instance p5, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$6;

    invoke-direct {p5, p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$6;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    const/4 p6, 0x2

    .line 84
    invoke-direct {p0, p6, p2, p5}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->initPivot(ILjava/util/function/Function;Ljava/util/function/Function;)V

    .line 89
    new-instance p2, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$7;

    invoke-direct {p2, p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$7;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    .line 90
    new-instance p5, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$8;

    invoke-direct {p5, p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$8;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    const/4 p6, 0x4

    .line 88
    invoke-direct {p0, p6, p2, p5}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->initPivot(ILjava/util/function/Function;Ljava/util/function/Function;)V

    .line 92
    new-instance p2, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$9;

    invoke-direct {p2, p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$9;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    .line 93
    new-instance p5, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$10;

    invoke-direct {p5, p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$10;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    const/4 p6, 0x5

    .line 91
    invoke-direct {p0, p6, p2, p5}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->initPivot(ILjava/util/function/Function;Ljava/util/function/Function;)V

    .line 95
    new-instance p2, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$11;

    invoke-direct {p2, p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$11;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    .line 96
    new-instance p5, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$12;

    invoke-direct {p5, p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$12;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    const/4 p6, 0x3

    .line 94
    invoke-direct {p0, p6, p2, p5}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->initPivot(ILjava/util/function/Function;Ljava/util/function/Function;)V

    .line 98
    sget-object p2, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$13;->INSTANCE:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$13;

    .line 99
    new-instance p5, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$14;

    invoke-direct {p5, p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$14;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    const/4 p6, 0x6

    .line 97
    invoke-direct {p0, p6, p2, p5}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->initPivot(ILjava/util/function/Function;Ljava/util/function/Function;)V

    .line 101
    new-instance p2, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$15;

    invoke-direct {p2, p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$15;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    invoke-virtual {p4, p2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->setRestoreRunnable(Ljava/lang/Runnable;)V

    .line 104
    new-instance p2, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$gestureListener$1;

    invoke-direct {p2, p3, p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$gestureListener$1;-><init>(Landroid/os/PowerManager;Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    .line 111
    new-instance p3, Landroid/view/GestureDetector;

    invoke-direct {p3, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p3, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->gestureDetector:Landroid/view/GestureDetector;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
    .end array-data
.end method

.method public static final synthetic access$calculatePivot(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;Landroid/view/View;)F
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->calculatePivot(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$getCallback$p(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->callback:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;

    return-object p0
.end method

.method public static final synthetic access$getView(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;I)Landroid/view/View;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getViewInjector$p(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    return-object p0
.end method

.method public static final synthetic access$hasView(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;I)Z
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$resetChildViewVI(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->resetChildViewVI()V

    return-void
.end method

.method public static final synthetic access$restoreTapAffordanceAnimation(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->restoreTapAffordanceAnimation()V

    return-void
.end method

.method public static final synthetic access$sendSALog(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->sendSALog()V

    return-void
.end method

.method public static final synthetic access$setFullScreenMode(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->setFullScreenMode(Z)V

    return-void
.end method

.method public static final synthetic access$setFullScreenModeShown$p(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isFullScreenModeShown:Z

    return-void
.end method

.method private final calculatePivot(Landroid/view/View;)F
    .locals 2

    const/4 v0, 0x1

    .line 124
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->dymLockInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->isLockStarEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->getAffordancePivotY()I

    move-result v1

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->getAffordancePivotY()I

    move-result p1

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->getAffordancePivotY()I

    move-result p0

    goto :goto_1

    .line 126
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView(I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->getAffordancePivotY()I

    move-result v1

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->getAffordancePivotY()I

    move-result p1

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    :goto_0
    sub-int/2addr p1, p0

    int-to-float p0, p1

    goto :goto_2

    .line 129
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->getAffordancePivotY()I

    move-result p0

    :goto_1
    neg-int p0, p0

    int-to-float p0, p0

    :goto_2
    return p0
.end method

.method private final canBeFullScreenMode(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->securityInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;->isFingerprintArea(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->dymLockInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->isNotLongTapMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 147
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isFullscreenModeEnabled:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->fullScreenAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->getTouchDownY()F

    move-result p1

    invoke-direct {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getParentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->getLongPressAllowHeight()I

    move-result p0

    sub-int/2addr v1, p0

    int-to-float p0, v1

    cmpg-float p0, p1, p0

    if-gez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private final createAnimatorSet(IZ)Landroid/animation/AnimatorSet;
    .locals 2

    .line 596
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_1

    .line 609
    sget-object p1, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->SINE_OUT_33:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->SINE_IN_33:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p2, :cond_2

    const-wide/16 p1, 0x96

    goto :goto_1

    :cond_2
    const-wide/16 p1, 0x12c

    .line 610
    :goto_1
    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 611
    iput-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->fullScreenAnimatorSet:Landroid/animation/AnimatorSet;

    goto :goto_2

    :cond_3
    const-wide/16 p1, 0x190

    .line 604
    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 605
    sget-object p1, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->SINE_OUT_33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 606
    iput-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->restoreAnimatorSet:Landroid/animation/AnimatorSet;

    goto :goto_2

    .line 599
    :cond_4
    sget-object p1, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->SINE_IN_33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p1, 0x64

    .line 600
    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 601
    iput-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->unlockViewHideAnimatorSet:Landroid/animation/AnimatorSet;

    :goto_2
    return-object v0
.end method

.method static synthetic createAnimatorSet$default(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;IZILjava/lang/Object;)Landroid/animation/AnimatorSet;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 595
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->createAnimatorSet(IZ)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method private final getParentView()Landroid/view/View;
    .locals 1

    .line 54
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->parentView$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "com.android.systemui.keyguard.animator\n\nimport android.animation.Animator\nimport android.animation.AnimatorListenerAdapter\nimport android.animation.AnimatorSet\nimport android.animation.ObjectAnimator\nimport android.content.Context\nimport android.os.PowerManager\nimport android.os.SystemClock\nimport android.util.Log\nimport android.util.Pair\nimport android.util.SparseArray\nimport android.view.GestureDetector\nimport android.view.InputDevice\nimport android.view.MotionEvent\nimport android.view.View\nimport android.view.animation.Interpolator\nimport android.view.animation.PathInterpolator\nimport androidx.dynamicanimation.animation.DynamicAnimation\nimport androidx.dynamicanimation.animation.SpringAnimation\nimport androidx.dynamicanimation.animation.SpringForce\nimport com.android.keyguard.KeyguardUpdateMonitor\nimport com.android.systemui.Dumpable\nimport com.android.systemui.Gefingerpoken\nimport com.android.systemui.LsRune\nimport com.android.systemui.dagger.SysUISingleton\nimport com.android.systemui.keyguard.animator.KeyguardTouchDymLockInjector.Direction\nimport com.android.systemui.plugins.statusbar.StatusBarStateController\nimport com.android.systemui.rune.RuneSupport\nimport com.android.systemui.rune.RuneType\nimport com.android.systemui.statusbar.StatusBarState\nimport com.android.systemui.util.SettingsHelper\nimport com.android.systemui.util.SystemUIAnalytics\nimport com.android.systemui.util.isDebugLevelMid\nimport java.io.FileDescriptor\nimport java.io.PrintWriter\nimport java.lang.Float.isNaN\nimport java.util.function.Function\nimport javax.inject.Inject\n\n@RuneSupport(RuneType.KEYGUARD_ALL_DIRECTIONS_SWIPE_UNLOCK)\n@SysUISingleton\nclass KeyguardTouchAnimator @Inject constructor(\n        context: Context,\n        keyguardUpdateMonitor: KeyguardUpdateMonitor,\n        powerManager: PowerManager,\n        private val dymLockInjector: KeyguardTouchDymLockInjector,\n        private val loggingInjector: KeyguardTouchLoggingInjector,\n        private val securityInjector: KeyguardTouchSecurityInjector,\n        private val sbStateController: StatusBarStateController,\n        private val settingsHelper: SettingsHelper)\n    : KeyguardTouchBase(context, keyguardUpdateMonitor), Gefingerpoken, Dumpable {\n    private lateinit var callback: KeyguardTouchSwipeCallback\n    private val parentView: View by lazy {\n        viewInjector.provideParent()\n    }"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method private final getView(I)Landroid/view/View;
    .locals 0

    .line 561
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->views:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "views.get(type)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method private final hasView(I)Z
    .locals 5

    .line 564
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->views:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v2, "viewInjector"

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 580
    :pswitch_0
    iget-object v4, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;->provideLockStarContainer()Landroid/view/View;

    move-result-object v3

    goto/16 :goto_0

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 579
    :pswitch_1
    iget-object v4, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;->provideUserSwitcher()Landroid/view/View;

    move-result-object v3

    goto/16 :goto_0

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 578
    :pswitch_2
    iget-object v4, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    if-eqz v4, :cond_3

    invoke-interface {v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;->provideFaceWidgetMediaContainer()Landroid/view/View;

    move-result-object v3

    goto/16 :goto_0

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 577
    :pswitch_3
    iget-object v4, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    if-eqz v4, :cond_4

    invoke-interface {v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;->provideLockIconContainer()Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 576
    :pswitch_4
    iget-object v4, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;->provideIndicatorArea()Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 575
    :pswitch_5
    iget-object v4, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    if-eqz v4, :cond_6

    invoke-interface {v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;->provideRightShortCut()Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 574
    :pswitch_6
    iget-object v4, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    if-eqz v4, :cond_7

    invoke-interface {v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;->provideLeftShortCut()Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 573
    :pswitch_7
    iget-object v4, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    if-eqz v4, :cond_8

    invoke-interface {v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;->provideIconsOnly()Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 572
    :pswitch_8
    iget-object v4, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    if-eqz v4, :cond_9

    invoke-interface {v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;->provideStackScroller()Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 571
    :pswitch_9
    iget-object v4, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    if-eqz v4, :cond_a

    invoke-interface {v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;->provideFaceWidget()Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 570
    :pswitch_a
    iget-object v4, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    if-eqz v4, :cond_b

    invoke-interface {v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;->provideStatusBar()Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :goto_0
    if-nez v3, :cond_c

    move v1, v0

    goto :goto_1

    .line 583
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->views:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final initPivot(ILjava/util/function/Function;Ljava/util/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Function<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/function/Function<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 140
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->pivot:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private final isAnimationRunning()Z
    .locals 1

    .line 329
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isTapAnimationRunning:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->restoreAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isFullScreenAnimationRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private final isFullScreenAnimationRunning()Z
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->fullScreenAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    return p0
.end method

.method private final isInternalTouch(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 646
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result p0

    and-int/lit16 p0, p0, 0x3002

    const/4 v0, 0x0

    const/16 v1, 0x1002

    if-ne p0, v1, :cond_0

    .line 647
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    return v0
.end method

.method private final resetChildViewVI()V
    .locals 5

    .line 537
    invoke-static {}, Lcom/android/systemui/util/LogUtil;->isDebugLevelMid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    invoke-direct {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getParentView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->showViewState(Landroid/view/View;)V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 541
    iput v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->notiScale:F

    const/4 v1, 0x0

    .line 543
    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->views:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_3

    :goto_0
    add-int/lit8 v3, v1, 0x1

    .line 544
    iget-object v4, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->views:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 545
    invoke-static {}, Lcom/android/systemui/util/LogUtil;->isDebugLevelMid()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "v"

    .line 546
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->showViewState(Landroid/view/View;)V

    .line 548
    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 549
    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 550
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    if-lt v3, v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private final restoreChildViewVI()V
    .locals 9

    .line 517
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted()Z

    move-result v0

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isTapAnimationRunning:Z

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 522
    invoke-static {p0, v2, v3, v0, v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->createAnimatorSet$default(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;IZILjava/lang/Object;)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 523
    sget-object v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->DRAG_VIEWS:[I

    .line 3782
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4300
    array-length v5, v1

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_2

    aget v7, v1, v6

    .line 523
    invoke-direct {p0, v7}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView(I)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1517
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1589
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 523
    invoke-direct {p0, v5}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 734
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/view/View;

    .line 523
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_5

    move v6, v2

    goto :goto_3

    :cond_5
    move v6, v3

    :goto_3
    if-eqz v6, :cond_4

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1819
    :cond_6
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 525
    invoke-direct {p0, v0, v2, v4, v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    goto :goto_4

    .line 528
    :cond_7
    invoke-direct {p0, v3}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 529
    invoke-direct {p0, v3}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView(I)Landroid/view/View;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    .line 531
    :cond_8
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 518
    :cond_9
    :goto_5
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string/jumbo v0, "restoreChildViewVI(): "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyguardTouchAnimator"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final restoreTapAffordanceAnimation()V
    .locals 8

    const-string v0, "KeyguardTouchAnimator"

    const-string/jumbo v1, "restoreTapAffordanceAnimation"

    .line 426
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 427
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isTapAnimationRunning:Z

    .line 428
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->tapSpringAnimationList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 429
    sget-object v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->TAP_AFFORDANCE_VIEWS:[I

    .line 3782
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4300
    array-length v3, v1

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_1

    aget v5, v1, v4

    .line 429
    invoke-direct {p0, v5}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1517
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1589
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 429
    invoke-direct {p0, v3}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 734
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/view/View;

    .line 430
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    move v4, v0

    :goto_3
    if-eqz v4, :cond_3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1819
    :cond_5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 432
    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v2, v1, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 433
    new-instance v3, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v3}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v4, 0x43af0000    # 350.0f

    .line 434
    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v3

    const v5, 0x3f47ae14    # 0.78f

    .line 435
    invoke-virtual {v3, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v3

    .line 433
    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 436
    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 437
    iget-object v6, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->restoreSpringAnimationList:Ljava/util/List;

    const-string/jumbo v7, "springAnimationX"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v2, v1, v6}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 440
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 441
    invoke-virtual {v1, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 442
    invoke-virtual {v1, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 440
    invoke-virtual {v2, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    .line 443
    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 444
    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->restoreSpringAnimationList:Ljava/util/List;

    const-string/jumbo v3, "springAnimationY"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    return-void
.end method

.method private final sendSALog()V
    .locals 1

    const-string p0, "101"

    const-string v0, "1012"

    .line 119
    invoke-static {p0, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final setChildViewPivot()V
    .locals 7

    .line 449
    sget-object v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->PIVOT_VIEWS:[I

    .line 3782
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4300
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget v5, v0, v4

    .line 449
    invoke-direct {p0, v5}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView(I)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1819
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is null"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardTouchAnimator"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 450
    :cond_2
    sget-object v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->PIVOT_VIEWS:[I

    array-length v1, v0

    :cond_3
    :goto_2
    if-ge v3, v1, :cond_4

    aget v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    .line 451
    iget-object v4, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->views:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_3

    .line 452
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    .line 453
    iget-object v5, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->pivot:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    if-eqz v2, :cond_3

    .line 455
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/util/function/Function;

    invoke-interface {v5, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "p.first.apply(v)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setPivotX(F)V

    .line 456
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/function/Function;

    invoke-interface {v2, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "p.second.apply(v)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setPivotY(F)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method private final setFullScreenMode(Z)V
    .locals 12

    .line 335
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isFullscreenModeEnabled:Z

    .line 337
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "setFullScreenMode enabled="

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardTouchAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-direct {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isFullScreenAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->fullScreenAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->sbStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x2

    .line 349
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->createAnimatorSet(IZ)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 350
    new-instance v2, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$setFullScreenMode$1$1;

    invoke-direct {v2, p1, p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$setFullScreenMode$1$1;-><init>(ZLcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    const v3, 0x3f733333    # 0.95f

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    if-eqz p1, :cond_3

    const/4 v2, 0x0

    :cond_3
    const/4 v4, 0x0

    .line 360
    invoke-direct {p0, v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 361
    invoke-direct {p0, v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView(I)Landroid/view/View;

    move-result-object v5

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    .line 362
    :goto_1
    sget-object v6, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->FULLSCREEN_VIEWS:[I

    .line 3782
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4300
    array-length v8, v6

    move v9, v4

    :goto_2
    if-ge v9, v8, :cond_6

    aget v10, v6, v9

    .line 362
    invoke-direct {p0, v10}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView(I)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1517
    :cond_6
    new-instance v6, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v7, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 1589
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 362
    invoke-direct {p0, v8}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView(I)Landroid/view/View;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 734
    :cond_7
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Landroid/view/View;

    .line 363
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_9

    move v9, v1

    goto :goto_5

    :cond_9
    move v9, v4

    :goto_5
    if-eqz v9, :cond_8

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1819
    :cond_a
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 366
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    if-eqz p1, :cond_b

    const/high16 v6, -0x40800000    # -1.0f

    goto :goto_7

    :cond_b
    move v6, v3

    .line 365
    :goto_7
    invoke-direct {p0, v0, v4, v6, v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    goto :goto_6

    .line 369
    :cond_c
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 372
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->loggingInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchLoggingInjector;

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchLoggingInjector;->onFullscreenModeChanged(Z)V

    .line 373
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->securityInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;->onFullscreenModeChanged(Z)V

    .line 374
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->dymLockInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->onFullscreenModeChanged(Z)V

    return-void
.end method

.method private final setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    cmpg-float v0, p3, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const/4 v3, 0x2

    if-nez v0, :cond_2

    new-array v0, v1, [Landroid/animation/Animator;

    .line 383
    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v3, [F

    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result v6

    aput v6, v5, v2

    aput p3, v5, v1

    invoke-static {p2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v0, v1, [Landroid/animation/Animator;

    .line 384
    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v3, [F

    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result v6

    aput v6, v5, v2

    aput p3, v5, v1

    invoke-static {p2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    aput-object p3, v0, v2

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_2
    cmpg-float p0, p4, p0

    if-nez p0, :cond_3

    move p0, v1

    goto :goto_1

    :cond_3
    move p0, v2

    :goto_1
    if-nez p0, :cond_4

    new-array p0, v1, [Landroid/animation/Animator;

    .line 388
    sget-object p3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v3, [F

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v3

    aput v3, v0, v2

    aput p4, v0, v1

    invoke-static {p2, p3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    aput-object p2, p0, v2

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_4
    return-void
.end method

.method private final showTapAffordanceAnimation()V
    .locals 10

    const-string v0, "KeyguardTouchAnimator"

    const-string/jumbo v1, "showTapAffordanceAnimation"

    .line 401
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    sget-object v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->TAP_AFFORDANCE_VIEWS:[I

    .line 3782
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4300
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget v5, v0, v4

    .line 402
    invoke-direct {p0, v5}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1517
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1589
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 402
    invoke-direct {p0, v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 734
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/view/View;

    .line 403
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    move v4, v3

    :goto_3
    if-eqz v4, :cond_3

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1829
    :cond_5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v3, 0x1

    if-gez v3, :cond_6

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_6
    check-cast v1, Landroid/view/View;

    if-nez v3, :cond_7

    .line 406
    iput-boolean v4, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isTapAnimationRunning:Z

    .line 407
    invoke-direct {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getParentView()Landroid/view/View;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->restoreSpringAnimRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x96

    invoke-virtual {v3, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 409
    :cond_7
    new-instance v3, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v5, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v3, v1, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 410
    new-instance v5, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v5}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v6, 0x43fa0000    # 500.0f

    .line 411
    invoke-virtual {v5, v6}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    const v7, 0x3f47ae14    # 0.78f

    .line 412
    invoke-virtual {v5, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    .line 410
    invoke-virtual {v3, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v3

    const v5, 0x3f8ccccd    # 1.1f

    .line 413
    invoke-virtual {v3, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 414
    iget-object v8, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->tapSpringAnimationList:Ljava/util/List;

    const-string/jumbo v9, "springAnimationX"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    new-instance v3, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v8, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v3, v1, v8}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 417
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 418
    invoke-virtual {v1, v6}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 419
    invoke-virtual {v1, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 417
    invoke-virtual {v3, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    .line 420
    invoke-virtual {v1, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 421
    iget-object v3, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->tapSpringAnimationList:Ljava/util/List;

    const-string/jumbo v5, "springAnimationY"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v2

    goto :goto_4

    :cond_8
    return-void
.end method

.method private final showViewState(Landroid/view/View;)V
    .locals 1

    .line 556
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "v="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " alpha="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " scale="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardTouchAnimator"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final updateChildViewVI()V
    .locals 13

    .line 463
    invoke-direct {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-direct {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getParentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_19

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->getDistance()F

    move-result v0

    iget v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchSlop:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    goto/16 :goto_11

    .line 467
    :cond_0
    iget v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->swipeUnlockRadius:I

    int-to-float v0, v0

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v2

    .line 468
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->getDistance()F

    move-result v2

    sub-float v2, v0, v2

    div-float/2addr v2, v0

    mul-float/2addr v2, v1

    const/4 v3, 0x0

    add-float/2addr v2, v3

    .line 470
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 472
    sget-object v4, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->DRAG_VIEWS:[I

    .line 3782
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4300
    array-length v6, v4

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_2

    aget v9, v4, v8

    .line 472
    invoke-direct {p0, v9}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView(I)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1517
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 1589
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 472
    invoke-direct {p0, v8}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView(I)Landroid/view/View;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 734
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Landroid/view/View;

    .line 472
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_5

    goto :goto_3

    :cond_5
    move v9, v7

    :goto_3
    if-eqz v9, :cond_4

    invoke-interface {v5, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1819
    :cond_6
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 474
    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_4

    .line 477
    :cond_7
    iget v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->swipeUnlockRadius:I

    int-to-float v2, v2

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v4

    .line 478
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->getDistance()F

    move-result v4

    sub-float v4, v2, v4

    div-float/2addr v4, v2

    mul-float/2addr v4, v1

    add-float/2addr v4, v3

    .line 480
    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 482
    sget-object v4, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->ONLY_ALPHA_DRAG_VIEWS:[I

    .line 3782
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4300
    array-length v8, v4

    move v10, v7

    :goto_5
    if-ge v10, v8, :cond_9

    aget v11, v4, v10

    .line 482
    invoke-direct {p0, v11}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView(I)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1517
    :cond_9
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 1589
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 482
    invoke-direct {p0, v8}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView(I)Landroid/view/View;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 734
    :cond_a
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Landroid/view/View;

    .line 482
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_c

    move v10, v9

    goto :goto_8

    :cond_c
    move v10, v7

    :goto_8
    if-eqz v10, :cond_b

    invoke-interface {v5, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1819
    :cond_d
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 484
    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_9

    .line 487
    :cond_e
    invoke-direct {p0, v7}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView(I)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_f

    .line 488
    invoke-direct {p0, v7}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView(I)Landroid/view/View;

    move-result-object v2

    goto :goto_a

    :cond_f
    move-object v2, v4

    .line 490
    :goto_a
    iget-object v5, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->unlockViewHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-nez v5, :cond_11

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v5

    cmpg-float v5, v5, v3

    if-nez v5, :cond_10

    move v5, v9

    goto :goto_b

    :cond_10
    move v5, v7

    :goto_b
    if-nez v5, :cond_11

    const/4 v5, 0x2

    .line 492
    invoke-static {p0, v7, v7, v5, v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->createAnimatorSet$default(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;IZILjava/lang/Object;)Landroid/animation/AnimatorSet;

    move-result-object v4

    const/high16 v5, -0x40800000    # -1.0f

    .line 493
    invoke-direct {p0, v4, v2, v5, v3}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    .line 494
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 499
    :cond_11
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->getDistance()F

    move-result v2

    div-float/2addr v2, v0

    const v0, 0x3e4cccd0    # 0.20000005f

    mul-float/2addr v2, v0

    add-float/2addr v2, v1

    const v0, 0x3f99999a    # 1.2f

    .line 501
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 503
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scale is NaN, distance = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->getDistance()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", swipeUnlockRadius "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->swipeUnlockRadius:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyguardTouchAnimator"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 507
    :cond_12
    iput v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->notiScale:F

    .line 509
    sget-object v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->DRAG_VIEWS:[I

    .line 3782
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4300
    array-length v3, v1

    move v4, v7

    :goto_c
    if-ge v4, v3, :cond_14

    aget v5, v1, v4

    .line 509
    invoke-direct {p0, v5}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView(I)Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1517
    :cond_14
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v2, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1589
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 509
    invoke-direct {p0, v3}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 734
    :cond_15
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/view/View;

    .line 509
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_17

    move v3, v9

    goto :goto_f

    :cond_17
    move v3, v7

    :goto_f
    if-eqz v3, :cond_16

    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1819
    :cond_18
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 511
    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 512
    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    goto :goto_10

    :cond_19
    :goto_11
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
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

    const-string p0, "fd"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pw"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "args"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final forceResetStackScrollerScale()V
    .locals 3

    .line 618
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->notiScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "KeyguardTouchAnimator"

    const-string v2, "NSSL wasn\'t restored to original scale. Need to reset in force."

    .line 619
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 620
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 621
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleX(F)V

    .line 622
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 624
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->reset()V

    :cond_2
    return-void
.end method

.method public final getCurrentNotiScale()F
    .locals 0

    .line 629
    iget p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->notiScale:F

    return p0
.end method

.method public final initialize(Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;)V
    .locals 1
    .param p1    # Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "paramViewInjector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paramCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    .line 136
    iput-object p2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->callback:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;

    return-void
.end method

.method public final isViRunning()Z
    .locals 1

    .line 324
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isTouching()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->securityInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;->isBlockedTouchEvent()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    return v3

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isDoubleTapToSleepAllowed()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isInternalTouch(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 162
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v4, 0x6

    const/4 v5, 0x3

    const-string v6, "callback"

    const/4 v7, 0x2

    if-eq v1, v3, :cond_b

    if-eq v1, v7, :cond_6

    if-eq v1, v5, :cond_b

    const/4 v8, 0x5

    if-eq v1, v8, :cond_3

    if-eq v1, v4, :cond_b

    goto/16 :goto_6

    .line 179
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->callback:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;->setMotionAborted()V

    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-lt p1, v7, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setMultiTouch(Z)V

    goto/16 :goto_6

    .line 179
    :cond_5
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isTouching()Z

    move-result v0

    if-nez v0, :cond_7

    return v2

    .line 188
    :cond_7
    new-instance v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$onTouchEvent$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$onTouchEvent$1;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->userActivityForMove(Ljava/lang/Runnable;)V

    .line 192
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isFullScreenModeShown:Z

    if-eqz v0, :cond_8

    return v3

    .line 195
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->updateDistance(Landroid/view/MotionEvent;)F

    .line 197
    iget v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchSlop:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->getDistance()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    .line 201
    invoke-direct {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getParentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->longPressCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 203
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->dymLockInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    .line 204
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->isDynamicLockEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 205
    iget v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->swipeUnlockRadius:I

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->getTouchDownX()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->getTouchDownY()F

    move-result v4

    invoke-virtual {v0, v1, v2, v4, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->updateDirection(IFFLandroid/view/MotionEvent;)V

    .line 209
    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->updateChildViewVI()V

    goto/16 :goto_6

    .line 213
    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onTouchEvent event="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " distance="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->getDistance()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "KeyguardTouchAnimator"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p0, v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setIntercept(Z)V

    .line 216
    invoke-direct {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getParentView()Landroid/view/View;

    move-result-object v8

    iget-object v10, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->longPressCallback:Ljava/lang/Runnable;

    invoke-virtual {v8, v10}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 217
    iget-boolean v8, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isFullscreenModeEnabled:Z

    if-eqz v8, :cond_c

    .line 218
    invoke-direct {p0, v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->setFullScreenMode(Z)V

    .line 220
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    if-gt v8, v3, :cond_d

    .line 221
    invoke-virtual {p0, v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setMultiTouch(Z)V

    .line 225
    :cond_d
    iget-object v8, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->dymLockInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    .line 226
    invoke-virtual {v8}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->isDynamicLockEnabled()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 227
    invoke-virtual {v8}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->getDirection()Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    move-result-object v8

    goto :goto_0

    :cond_e
    move-object v8, v0

    .line 231
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isAnimationRunning()Z

    move-result v10

    if-nez v10, :cond_13

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted()Z

    move-result v10

    if-nez v10, :cond_13

    invoke-direct {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getParentView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v10, v10, v11

    if-nez v10, :cond_f

    move v10, v3

    goto :goto_1

    :cond_f
    move v10, v2

    :goto_1
    if-eqz v10, :cond_13

    .line 232
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isMultiTouch()Z

    move-result v10

    if-nez v10, :cond_10

    if-eqz v8, :cond_10

    sget-object v10, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->SWIPE:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    if-eq v8, v10, :cond_10

    sget-object v10, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->TAP:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    if-ne v8, v10, :cond_13

    .line 234
    :cond_10
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->getDistance()F

    move-result v10

    iget v11, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchSlop:I

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_11

    .line 235
    invoke-direct {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->resetChildViewVI()V

    .line 236
    invoke-direct {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->showTapAffordanceAnimation()V

    goto :goto_2

    .line 240
    :cond_11
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->getDistance()F

    move-result v10

    iget v11, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->swipeUnlockRadius:I

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-lez v10, :cond_12

    if-eq v1, v4, :cond_12

    if-ne v1, v5, :cond_13

    .line 243
    :cond_12
    invoke-direct {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->restoreChildViewVI()V

    :cond_13
    :goto_2
    if-ne v1, v3, :cond_1c

    .line 250
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->loggingInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchLoggingInjector;

    .line 251
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTouchEvent T="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchSlop:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", D="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->getDistance()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", R="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->swipeUnlockRadius:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", W="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 250
    invoke-virtual {v1, v9, v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchLoggingInjector;->onDumpableLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->callback:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;

    if-eqz v1, :cond_1b

    invoke-interface {v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;->callUserActivity()V

    if-eqz v8, :cond_14

    .line 254
    sget-object v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->SWIPE:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    if-ne v8, v1, :cond_19

    .line 256
    :cond_14
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->getDistance()F

    move-result v1

    iget v4, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchSlop:I

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_16

    .line 257
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->callback:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;

    if-eqz v1, :cond_15

    invoke-interface {v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;->onAffordanceTap()V

    goto :goto_3

    :cond_15
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_16
    iget v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->swipeUnlockRadius:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->getDistance()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_18

    .line 261
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->getCanBeUnlock()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 262
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->loggingInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchLoggingInjector;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchLoggingInjector;->onUnlockExecuted()V

    .line 263
    new-instance v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$onTouchEvent$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$onTouchEvent$4;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->unlockExecute(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 267
    :cond_17
    invoke-direct {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->restoreChildViewVI()V

    goto :goto_3

    :cond_18
    const-string v0, "no operation"

    .line 272
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_19
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-lt p1, v7, :cond_1a

    move p1, v3

    goto :goto_4

    :cond_1a
    move p1, v2

    :goto_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setMultiTouch(Z)V

    goto :goto_5

    .line 252
    :cond_1b
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_1c
    :goto_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setTouch(Z)V

    .line 279
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->dymLockInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->resetDynamicLock()V

    goto :goto_6

    .line 164
    :cond_1d
    invoke-virtual {p0, v3}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setTouch(Z)V

    .line 165
    invoke-virtual {p0, v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setMultiTouch(Z)V

    .line 166
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isFullScreenModeShown:Z

    .line 167
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->clearDistance()V

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setTouchDownPos(Landroid/view/MotionEvent;)V

    .line 169
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->dymLockInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->initDynamicLock()V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->restoreSpringAnimationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 172
    invoke-direct {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->setChildViewPivot()V

    .line 173
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->canBeFullScreenMode(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 174
    invoke-direct {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getParentView()Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->longPressCallback:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1e
    :goto_6
    return v3
.end method

.method public final refreshView(I)V
    .locals 0

    .line 592
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->views:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public final reset()V
    .locals 3

    .line 287
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "reset unlockExecuted="

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardTouchAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->tapSpringAnimationList:Ljava/util/List;

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 290
    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    goto :goto_0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->tapSpringAnimationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 294
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->restoreSpringAnimationList:Ljava/util/List;

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 295
    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    goto :goto_1

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->restoreSpringAnimationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 298
    invoke-direct {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getParentView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->restoreSpringAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 299
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isTapAnimationRunning:Z

    .line 302
    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->fullScreenAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 303
    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->unlockViewHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 304
    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->restoreAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 306
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 307
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setUnlockExecuted(Z)V

    .line 309
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->resetChildViewVI()V

    .line 310
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isFullscreenModeEnabled:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "reset mFullScreenModeEnabled true"

    .line 311
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isFullscreenModeEnabled:Z

    .line 314
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setTouch(Z)V

    .line 315
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isFullScreenModeShown:Z

    .line 316
    invoke-direct {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getParentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->longPressCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 317
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->dymLockInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->resetDynamicLock()V

    .line 319
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->clearDistance()V

    .line 320
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->clearTouchPos()V

    return-void
.end method
