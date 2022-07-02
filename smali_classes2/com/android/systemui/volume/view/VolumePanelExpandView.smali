.class public Lcom/android/systemui/volume/view/VolumePanelExpandView;
.super Landroid/app/Dialog;
.source "VolumePanelExpandView.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObservable;
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Dialog;",
        "Lcom/samsung/systemui/splugins/volume/VolumeObservable<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
        ">;",
        "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
        ">;"
    }
.end annotation


# static fields
.field private static IS_TABLET:Z


# instance fields
.field private mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

.field private mActiveStream:I

.field private final mBlurEffect:Lcom/android/systemui/volume/util/BlurEffect;

.field private mBlurView:Landroid/widget/ImageView;

.field private mContentsView:Landroid/view/ViewGroup;

.field private final mContext:Landroid/content/Context;

.field private final mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

.field private final mHasCutOutDisplay:Z

.field private mLiveCaptionButton:Landroid/widget/ImageButton;

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mRootView:Landroid/view/ViewGroup;

.field private mRowContainer:Landroid/view/ViewGroup;

.field mRowsLabel:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingButton:Landroid/widget/ImageButton;

.field private mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

.field private mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

.field private mTitleView:Landroid/widget/TextView;

.field private final mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;


# direct methods
.method public static synthetic $r8$lambda$4TG_rfY-nA12WAIR4KXyi_5cNGI(Lcom/android/systemui/volume/view/VolumePanelExpandView;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->lambda$dispatch$12(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6sxjH2IRyJEkPb3FVpI1Q5Sjtjo(Lcom/android/systemui/volume/view/VolumePanelExpandView;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->lambda$updateVolumeTitle$15(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CQAXy9srSiI_ceO-rYFXq32ZVJw(Lcom/android/systemui/volume/view/VolumePanelExpandView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->lambda$updateStatusMsgArea$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CmqY_8m3TnT2hjLMWgpFh8Dt04I(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->lambda$updateVolumeTitle$14(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$FV-XrXw3qLxM7O3xRkfHk473rps(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->lambda$adjustTouchEventForOutsideTouch$8(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$LlTlwYR78U29YvVEESLcB4qriP0(Lcom/android/systemui/volume/view/VolumePanelExpandView;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->lambda$addRows$10(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M69oQJt5oiyhbK5R5Z--U6IJUpA(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->lambda$addRows$9(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$MBgu_TnL15vI_ekVMDxankX3q6E()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->lambda$initView$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$TpXFVryZHr9DQCdLt7qHmUQk-4w(Lcom/android/systemui/volume/view/VolumePanelExpandView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->lambda$onChanged$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$VY5RMmIR7VC1Ci_-oQTrlM3OO_Q(Lcom/android/systemui/volume/view/VolumePanelExpandView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->lambda$adjustTouchEventForOutsideTouch$7(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$etIQh2-ejWeUeItzCrZnJE4d9j0(Lcom/android/systemui/volume/view/VolumePanelExpandView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->lambda$initView$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$hV2qUJpXPT1GRBNJpdMA8XbvP8o(Lcom/android/systemui/volume/view/VolumePanelExpandView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->lambda$initView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mTrcOfX9pakClhHBDWaWIZ6f7VY(Lcom/android/systemui/volume/view/VolumePanelExpandView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->lambda$initView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o2I6vJA9KNUb2hDAf0O6pYzbK-U(Lcom/android/systemui/volume/view/VolumePanelExpandView;)[I
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->lambda$initView$4()[I

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$x5J_WUG6XfZkpL9pU-CJlPDwA6k(Lcom/android/systemui/volume/view/VolumePanelExpandView;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->lambda$initView$6(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xAJaNB7mKdIJ2TGzi5LP4HxH8Ck(Lcom/android/systemui/volume/view/VolumePanelExpandView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->lambda$initView$5()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 84
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->IS_TABLET:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;Z)V
    .locals 1

    .line 87
    const-class v0, Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mObservers:Ljava/util/ArrayList;

    .line 76
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_NONE:I

    iput v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mActiveStream:I

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mRowsLabel:Ljava/util/HashMap;

    .line 88
    const-class v0, Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mContext:Landroid/content/Context;

    .line 89
    const-class v0, Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/store/VolumePanelStore;

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 90
    const-class v0, Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/HandlerWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 91
    const-class v0, Lcom/android/systemui/volume/view/VolumePanelMotion;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/view/VolumePanelMotion;

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 92
    const-class v0, Lcom/android/systemui/volume/util/BlurEffect;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/BlurEffect;

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mBlurEffect:Lcom/android/systemui/volume/util/BlurEffect;

    .line 93
    iput-boolean p2, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mHasCutOutDisplay:Z

    .line 94
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->initDialog()V

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->initView()V

    return-void
.end method

.method private addRows(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mRowsLabel:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 289
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mRowContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->addSpace(Landroid/view/ViewGroup;)V

    .line 290
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/volume/view/VolumePanelExpandView$$ExternalSyntheticLambda15;->INSTANCE:Lcom/android/systemui/volume/view/VolumePanelExpandView$$ExternalSyntheticLambda15;

    .line 291
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 292
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 293
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 294
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 296
    :cond_0
    sget-boolean v1, Lcom/android/systemui/BasicRune;->VOLUME_LEFT_DISPLAY_VOLUME_DIALOG:Z

    if-nez v1, :cond_1

    .line 297
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 299
    :cond_1
    new-instance v1, Lcom/android/systemui/volume/view/VolumePanelExpandView$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/view/VolumePanelExpandView$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/volume/view/VolumePanelExpandView;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private adjustTouchEventForOutsideTouch()V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mRootView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/volume/view/VolumePanelExpandView$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/VolumePanelExpandView$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/volume/view/VolumePanelExpandView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 267
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mContentsView:Landroid/view/ViewGroup;

    sget-object v0, Lcom/android/systemui/volume/view/VolumePanelExpandView$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/systemui/volume/view/VolumePanelExpandView$$ExternalSyntheticLambda5;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 3

    const/4 p0, 0x1

    new-array v0, p0, [[I

    const/4 v1, 0x0

    new-array v2, v1, [I

    aput-object v2, v0, v1

    .line 528
    new-instance v2, Landroid/content/res/ColorStateList;

    new-array p0, p0, [I

    aput p1, p0, v1

    invoke-direct {v2, v0, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private getWindowY(ZZII)I
    .locals 2

    .line 242
    sget-boolean v0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->IS_TABLET:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    int-to-float p1, p3

    if-eqz p2, :cond_0

    div-float/2addr p1, v1

    :cond_0
    int-to-float p2, p4

    sub-float/2addr p1, p2

    div-float/2addr p1, v1

    .line 243
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    float-to-int p0, p1

    const/4 p1, 0x0

    .line 244
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 247
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p4, Lcom/android/systemui/R$dimen;->volume_seekbar_height:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr p3, p1

    int-to-float p1, p3

    .line 249
    sget-boolean p3, Lcom/android/systemui/volume/view/VolumePanelExpandView;->IS_TABLET:Z

    if-eqz p3, :cond_2

    div-float/2addr p1, v1

    goto :goto_1

    .line 252
    :cond_2
    sget-boolean p3, Lcom/android/systemui/BasicRune;->FOLDABLE_TYPE_FLIP:Z

    if-eqz p3, :cond_3

    sget p2, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->VERTICAL_PADDING_TOP_FOR_FLIP_RATIO:F

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 253
    sget p2, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->VERTICAL_WIDE_SCREEN_TOP_RATIO:F

    goto :goto_0

    :cond_4
    sget p2, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->VERTICAL_PADDING_TOP_RATIO:F

    :goto_0
    mul-float/2addr p1, p2

    .line 256
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$dimen;->volume_panel_expand_row_container_margin_top:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 257
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    int-to-float p0, p2

    sub-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private initDialog()V
    .locals 5

    .line 99
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    .line 100
    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 101
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x2

    .line 102
    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    const v2, 0x10c0128

    .line 103
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 109
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 110
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x7e4

    .line 111
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, -0x3

    .line 112
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 113
    const-class v2, Lcom/android/systemui/volume/view/VolumePanelExpandView;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v2, -0x1

    .line 114
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 115
    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->volume_panel_view_title:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 116
    iget-boolean p0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mHasCutOutDisplay:Z

    if-eqz p0, :cond_0

    .line 117
    iget p0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x4000400

    or-int/2addr p0, v2

    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 118
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 120
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private isActiveStreamChanged(I)Z
    .locals 1

    .line 519
    iget v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mActiveStream:I

    if-eq p1, v0, :cond_0

    .line 520
    iput p1, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mActiveStream:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isNightMode()Z
    .locals 0

    .line 532
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x20

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$addRows$10(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 7

    .line 300
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->volume_row_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/view/VolumeRowView;

    .line 301
    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    iget-object v3, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object v6, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    move-object v1, v0

    move-object v4, p2

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/volume/view/VolumeRowView;->initialize(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/android/systemui/volume/util/HandlerWrapper;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/android/systemui/volume/view/VolumePanelMotion;)V

    .line 302
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mRowContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 303
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mRowContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->addSpace(Landroid/view/ViewGroup;)V

    .line 304
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mRowsLabel:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/systemui/volume/view/VolumeRowView;->getLabel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic lambda$addRows$9(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 1

    .line 291
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->VISIBILITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$adjustTouchEventForOutsideTouch$7(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 262
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_TOUCH_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v0, 0x1

    .line 263
    invoke-virtual {p1, p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 264
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    .line 262
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return v0
.end method

.method private static synthetic lambda$adjustTouchEventForOutsideTouch$8(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$dispatch$12(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 1

    .line 401
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 402
    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$initView$0(Landroid/view/View;)V
    .locals 2

    .line 131
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SETTINGS_BUTTON_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v1, 0x1

    .line 132
    invoke-virtual {p1, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method private synthetic lambda$initView$1(Landroid/view/View;)V
    .locals 2

    .line 135
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_CAPTION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v1, 0x1

    .line 136
    invoke-virtual {p1, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method private static synthetic lambda$initView$2()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$initView$3()V
    .locals 4

    .line 153
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mBlurEffect:Lcom/android/systemui/volume/util/BlurEffect;

    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mBlurView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$color;->volume_expand_panel_bg_color_blur:I

    .line 154
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mContext:Landroid/content/Context;

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Lcom/android/systemui/R$dimen;->volume_panel_expand_view_radius:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    .line 153
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/volume/util/BlurEffect;->setRealTimeBlur(Landroid/view/View;IF)V

    return-void
.end method

.method private synthetic lambda$initView$4()[I
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 160
    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 161
    aget v2, v0, v1

    int-to-double v2, v2

    iget-object v4, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3f9999999999999aL    # 0.025

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 162
    aget v2, v0, v1

    int-to-double v2, v2

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    int-to-double v4, p0

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-int p0, v2

    aput p0, v0, v1

    return-object v0
.end method

.method private synthetic lambda$initView$5()V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mBlurEffect:Lcom/android/systemui/volume/util/BlurEffect;

    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mBlurView:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/volume/view/VolumePanelExpandView$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/view/VolumePanelExpandView$$ExternalSyntheticLambda16;-><init>(Lcom/android/systemui/volume/view/VolumePanelExpandView;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/util/BlurEffect;->setCapturedBlur(Landroid/widget/ImageView;Ljava/util/function/Supplier;)V

    return-void
.end method

.method private synthetic lambda$initView$6(Landroid/content/DialogInterface;)V
    .locals 1

    .line 150
    sget-object p1, Lcom/android/systemui/volume/view/VolumePanelExpandView$$ExternalSyntheticLambda11;->INSTANCE:Lcom/android/systemui/volume/view/VolumePanelExpandView$$ExternalSyntheticLambda11;

    .line 151
    sget v0, Lcom/android/systemui/R$id;->volume_panel_expand_blur:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mBlurView:Landroid/widget/ImageView;

    .line 152
    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    if-eqz v0, :cond_0

    .line 153
    new-instance p1, Lcom/android/systemui/volume/view/VolumePanelExpandView$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/VolumePanelExpandView$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/volume/view/VolumePanelExpandView;)V

    goto :goto_0

    .line 156
    :cond_0
    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_CAPTURED_BLUR:Z

    if-eqz v0, :cond_1

    .line 157
    new-instance p1, Lcom/android/systemui/volume/view/VolumePanelExpandView$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/VolumePanelExpandView$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/volume/view/VolumePanelExpandView;)V

    .line 166
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/volume/view/VolumePanelMotion;->startShowVolumeExpandAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onChanged$13()V
    .locals 1

    .line 436
    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mBlurEffect:Lcom/android/systemui/volume/util/BlurEffect;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/util/BlurEffect;->hideBlur(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateStatusMsgArea$11(Landroid/view/View;)V
    .locals 2

    .line 360
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_STATUS_MESSAGE_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v1, 0x1

    .line 361
    invoke-virtual {p1, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 362
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    const/4 v0, 0x0

    .line 360
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method private static synthetic lambda$updateVolumeTitle$14(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 2

    .line 504
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p0

    if-ne v0, p0, :cond_0

    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->REMOTE_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    .line 505
    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$updateVolumeTitle$15(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 0

    .line 507
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->updateVolumeTitle(I)V

    return-void
.end method

.method private setValuesForAnimation()V
    .locals 2

    .line 342
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 343
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x3f733333    # 0.95f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 344
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private toggleLiveCaptionButton(Z)V
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mLiveCaptionButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    .line 322
    sget v1, Lcom/android/systemui/R$drawable;->ic_volume_popup_live_caption_on:I

    goto :goto_0

    .line 323
    :cond_0
    sget v1, Lcom/android/systemui/R$drawable;->ic_volume_popup_live_caption_off:I

    .line 321
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 324
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mLiveCaptionButton:Landroid/widget/ImageButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p1, :cond_1

    .line 325
    sget p1, Lcom/android/systemui/R$string;->volume_live_caption_on:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/android/systemui/R$string;->volume_live_caption_off:I

    .line 324
    :goto_1
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mContext:Landroid/content/Context;

    .line 326
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->volume_button_live_caption:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 324
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateAccessibilityFlags(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 1

    .line 536
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOW_A11Y_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 537
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 538
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 539
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private updateBackgroundView(IIIZ)V
    .locals 3

    .line 215
    sget v0, Lcom/android/systemui/R$id;->volume_panel_expand_view_background:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 216
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 217
    sget v2, Lcom/android/systemui/R$id;->volume_panel_expand_view_background_stroke:I

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 218
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz p4, :cond_0

    move p2, p3

    .line 219
    :cond_0
    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 220
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result p1

    const/16 p2, 0x8

    if-eqz p1, :cond_1

    .line 221
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$drawable;->volume_panel_expand_bg_reduce_transparency:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 222
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 223
    :cond_1
    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    if-nez p1, :cond_3

    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_CAPTURED_BLUR:Z

    if-eqz p1, :cond_2

    goto :goto_0

    .line 227
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$drawable;->volume_panel_expand_bg:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 228
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 224
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/systemui/R$drawable;->volume_panel_expand_bg_blur:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 225
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->isNightMode()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private updateLiveCaptionView(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 3

    .line 309
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_CAPTION_COMPONENT_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    .line 310
    sget-boolean v1, Lcom/android/systemui/BasicRune;->VOLUME_QUICK_MANAGE_POWER_PLANNING_DOWNLOADABLE:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnableReserveMaxMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 312
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_CAPTION_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    .line 313
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mLiveCaptionButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 314
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->toggleLiveCaptionButton(Z)V

    goto :goto_1

    .line 316
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mLiveCaptionButton:Landroid/widget/ImageButton;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private updateNewStream(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 2

    .line 495
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mRowsLabel:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mActiveStream:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mRowContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 498
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->addRows(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    :cond_0
    return-void
.end method

.method private updatePadding(ZIIIIIIIZZ)V
    .locals 8

    .line 204
    sget-boolean v6, Lcom/android/systemui/volume/view/VolumePanelExpandView;->IS_TABLET:Z

    move v0, p3

    move v1, p6

    move v2, p7

    move/from16 v3, p8

    move/from16 v4, p9

    move v5, p1

    move/from16 v7, p10

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->getVolumeExpandPanelVerticalPadding(IIIIZZZZ)Landroid/util/Pair;

    move-result-object v0

    .line 206
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 207
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 209
    sget-boolean v7, Lcom/android/systemui/volume/view/VolumePanelExpandView;->IS_TABLET:Z

    move v2, p2

    move v3, p5

    move v4, p4

    move/from16 v6, p10

    invoke-static/range {v2 .. v7}, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->getVolumeExpandPanelHorizontalPadding(IIIZZZ)I

    move-result v2

    move-object v3, p0

    .line 211
    iget-object v3, v3, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2, v1, v2, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method private updatePanelLayout(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 21

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    .line 171
    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    iget-object v2, v11, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    move v10, v3

    goto :goto_0

    :cond_0
    move v10, v4

    .line 172
    :goto_0
    iget-object v2, v11, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 173
    iget-object v5, v11, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 174
    iget-object v6, v11, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/systemui/R$dimen;->volume_panel_screen_width_threshold:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    if-eqz v10, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v2

    :goto_1
    if-le v7, v6, :cond_2

    move v9, v3

    goto :goto_2

    :cond_2
    move v9, v4

    .line 176
    :goto_2
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureHintEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 177
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureWhileHidden()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v4

    .line 178
    :goto_3
    sget-boolean v6, Lcom/android/systemui/volume/view/VolumePanelExpandView;->IS_TABLET:Z

    if-nez v6, :cond_6

    if-nez v9, :cond_6

    if-eqz v10, :cond_4

    if-nez v1, :cond_6

    :cond_4
    if-nez v10, :cond_5

    goto :goto_4

    :cond_5
    move v1, v4

    goto :goto_5

    :cond_6
    :goto_4
    move v1, v3

    :goto_5
    if-eqz v1, :cond_7

    .line 180
    iget-object v1, v11, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x1050209

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v5, v1

    :cond_7
    move v8, v5

    .line 183
    iget-object v1, v11, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/android/systemui/R$dimen;->volume_expand_panel_horizontal_padding_min:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 184
    iget-object v1, v11, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/android/systemui/R$dimen;->volume_panel_expand_width:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 185
    iget-object v1, v11, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mContentsView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 186
    sget-boolean v18, Lcom/android/systemui/volume/view/VolumePanelExpandView;->IS_TABLET:Z

    move v12, v2

    move v13, v8

    move/from16 v16, v10

    move/from16 v17, v9

    invoke-static/range {v12 .. v18}, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->getVolumeExpandPanelWidth(IIIIZZZ)I

    move-result v1

    iput v1, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 189
    iget-object v1, v11, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/android/systemui/R$dimen;->volume_expand_panel_horizontal_padding:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 190
    iget-object v1, v11, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/android/systemui/R$dimen;->volume_expand_panel_vertical_padding:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 191
    iget-object v1, v11, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v12, Lcom/android/systemui/R$dimen;->volume_panel_expand_height:I

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 192
    iget-object v1, v11, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v13, Lcom/android/systemui/R$dimen;->volume_panel_expand_height_with_msg:I

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 194
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ZEN_MODE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ALL_SOUND_OFF:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    move v14, v4

    goto :goto_7

    :cond_9
    :goto_6
    move v14, v3

    .line 195
    :goto_7
    iget v4, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p0

    move v1, v10

    move v3, v8

    move-object v15, v7

    move v7, v12

    move/from16 v19, v8

    move v8, v13

    move/from16 p1, v9

    move v9, v14

    move/from16 v20, v10

    move/from16 v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->updatePadding(ZIIIIIIIZZ)V

    .line 197
    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-direct {v11, v0, v12, v13, v14}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->updateBackgroundView(IIIZ)V

    .line 198
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->adjustTouchEventForOutsideTouch()V

    move/from16 v4, p1

    if-eqz v14, :cond_a

    move v12, v13

    :cond_a
    move/from16 v5, v19

    move/from16 v3, v20

    .line 199
    invoke-direct {v11, v3, v4, v5, v12}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->updateWindowGravity(ZZII)V

    return-void
.end method

.method private updateSettingButton(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 3

    .line 330
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SETUP_WIZARD_COMPLETE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    .line 331
    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_QUICK_MANAGE_POWER_PLANNING_DOWNLOADABLE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnableReserveMaxMode()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    .line 333
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mSettingButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 334
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mSettingButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1

    .line 336
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mSettingButton:Landroid/widget/ImageButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 337
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mSettingButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method private updateStatusMsgArea(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 9

    .line 348
    sget v0, Lcom/android/systemui/R$id;->volume_panel_expand_bottom_space:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    .line 349
    sget v1, Lcom/android/systemui/R$id;->volume_panel_status_message_layout:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 350
    sget v2, Lcom/android/systemui/R$id;->volume_panel_status_message_description:I

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 351
    sget v3, Lcom/android/systemui/R$id;->volume_panel_status_message_icon:I

    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 352
    iget-object v4, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$color;->volume_panel_status_message_color:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 354
    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ALL_SOUND_OFF:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ZEN_MODE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    const/16 v7, 0x8

    if-eqz v4, :cond_2

    move v8, v7

    goto :goto_2

    :cond_2
    move v8, v5

    .line 355
    :goto_2
    invoke-virtual {v0, v8}, Landroid/widget/Space;->setVisibility(I)V

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move v5, v7

    .line 356
    :goto_3
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 357
    invoke-virtual {p1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/android/systemui/R$string;->volume_mute_all_sounds_on:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 358
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/android/systemui/R$string;->volume_zen_mode_on:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 357
    :goto_4
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    invoke-virtual {p1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 360
    new-instance v6, Lcom/android/systemui/volume/view/VolumePanelExpandView$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/android/systemui/volume/view/VolumePanelExpandView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/volume/view/VolumePanelExpandView;)V

    .line 359
    :cond_5
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateVolumeTitle(I)V
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mRowsLabel:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 513
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateVolumeTitle(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 2

    .line 503
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/VolumePanelExpandView$$ExternalSyntheticLambda14;

    invoke-direct {v1, p1}, Lcom/android/systemui/volume/view/VolumePanelExpandView$$ExternalSyntheticLambda14;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 504
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/VolumePanelExpandView$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/VolumePanelExpandView$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/volume/view/VolumePanelExpandView;)V

    .line 506
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateWindowGravity(ZZII)V
    .locals 2

    .line 233
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 234
    sget-boolean v1, Lcom/android/systemui/BasicRune;->VOLUME_LEFT_DISPLAY_VOLUME_DIALOG:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    :goto_0
    or-int/lit8 v1, v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x0

    .line 235
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 236
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->getWindowY(ZZII)I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 237
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 238
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public addSpace(Landroid/view/ViewGroup;)V
    .locals 3

    .line 367
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 368
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 369
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$layout;->volume_row_space:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Space;

    .line 370
    invoke-virtual {p0, v0}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 487
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 489
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mRowContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 490
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 491
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    const/4 v1, 0x1

    .line 490
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 400
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    new-instance v0, Lcom/android/systemui/volume/view/VolumePanelExpandView$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/volume/view/VolumePanelExpandView$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/volume/view/VolumePanelExpandView;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    invoke-virtual {p2, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 406
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 407
    invoke-interface {p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public bridge synthetic dispatch(Ljava/lang/Object;Z)V
    .locals 0

    .line 61
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 376
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_TOUCH_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v2, 0x1

    .line 377
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    .line 378
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    const/4 v3, 0x0

    .line 376
    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 380
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_0

    .line 388
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 382
    :cond_0
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_TOUCH_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 383
    invoke-virtual {p1, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 384
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    .line 382
    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return v2
.end method

.method public disposeActionObserver()V
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    if-eqz v0, :cond_0

    .line 480
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    const/4 v0, 0x0

    .line 481
    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    :cond_0
    return-void
.end method

.method public disposeStateObservable()V
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    if-eqz v0, :cond_0

    .line 473
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    const/4 v0, 0x0

    .line 474
    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    :cond_0
    return-void
.end method

.method public initView()V
    .locals 2

    .line 124
    sget v0, Lcom/android/systemui/R$layout;->volume_panel_expand_view:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 126
    sget v0, Lcom/android/systemui/R$id;->volume_title:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mTitleView:Landroid/widget/TextView;

    .line 127
    sget v0, Lcom/android/systemui/R$id;->volume_panel_expand_view:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mRootView:Landroid/view/ViewGroup;

    .line 128
    sget v0, Lcom/android/systemui/R$id;->volume_panel_expand_view_contents:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mContentsView:Landroid/view/ViewGroup;

    .line 130
    sget v0, Lcom/android/systemui/R$id;->volume_setting_button:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mSettingButton:Landroid/widget/ImageButton;

    .line 131
    new-instance v1, Lcom/android/systemui/volume/view/VolumePanelExpandView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/VolumePanelExpandView$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/volume/view/VolumePanelExpandView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    sget v0, Lcom/android/systemui/R$id;->volume_live_caption_button:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mLiveCaptionButton:Landroid/widget/ImageButton;

    .line 135
    new-instance v1, Lcom/android/systemui/volume/view/VolumePanelExpandView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/VolumePanelExpandView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/view/VolumePanelExpandView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/VolumePanelExpandView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/VolumePanelExpandView$1;-><init>(Lcom/android/systemui/volume/view/VolumePanelExpandView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 149
    new-instance v0, Lcom/android/systemui/volume/view/VolumePanelExpandView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/VolumePanelExpandView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/volume/view/VolumePanelExpandView;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method

.method public onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 3

    .line 414
    sget-object v0, Lcom/android/systemui/volume/view/VolumePanelExpandView$2;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType:[I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 460
    :pswitch_0
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_CAPTION_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->toggleLiveCaptionButton(Z)V

    goto :goto_0

    .line 452
    :pswitch_1
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 453
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->dismiss()V

    .line 455
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->disposeActionObserver()V

    .line 456
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->disposeStateObservable()V

    goto :goto_0

    .line 446
    :pswitch_2
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 447
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->dismiss()V

    goto :goto_0

    .line 433
    :pswitch_3
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ANIMATING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 434
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/VolumePanelExpandView$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/VolumePanelExpandView$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/volume/view/VolumePanelExpandView;)V

    new-instance v2, Lcom/android/systemui/volume/view/VolumePanelExpandView$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/view/VolumePanelExpandView$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/volume/view/VolumePanelExpandView;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/systemui/volume/view/VolumePanelMotion;->startHideVolumeExpandAnimation(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 424
    :pswitch_4
    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->updateVolumeTitle(I)V

    goto :goto_0

    .line 416
    :pswitch_5
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v0

    .line 417
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->isActiveStreamChanged(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 418
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->updateNewStream(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 420
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->updateVolumeTitle(I)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 61
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    return-void
.end method

.method public onShow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 2

    .line 271
    sget v0, Lcom/android/systemui/R$id;->volume_panel_expand_view:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 272
    sget v1, Lcom/android/systemui/R$id;->volume_row_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mRowContainer:Landroid/view/ViewGroup;

    .line 274
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->addRows(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 275
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->updateStatusMsgArea(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 276
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->updatePanelLayout(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 277
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->updateSettingButton(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 278
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->setValuesForAnimation()V

    .line 279
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->updateLiveCaptionView(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 280
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->updateVolumeTitle(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 281
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->updateAccessibilityFlags(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 283
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 284
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->setStore()V

    return-void
.end method

.method public setStore()V
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/store/VolumePanelStore;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 468
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/view/VolumePanelExpandView;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    return-void
.end method

.method public subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
            ">;)",
            "Lcom/samsung/systemui/splugins/volume/VolumeDisposable;"
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelExpandView;->mObservers:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;-><init>(Ljava/util/ArrayList;Lcom/samsung/systemui/splugins/volume/VolumeObserver;)V

    return-object v0
.end method
