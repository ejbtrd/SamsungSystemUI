.class public Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;
.super Landroid/app/Presentation;
.source "SubDisplayVolumePanelPresentation.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObservable;
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Presentation;",
        "Lcom/samsung/systemui/splugins/volume/VolumeObservable<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
        ">;",
        "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
        ">;"
    }
.end annotation


# instance fields
.field private mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

.field private mActiveStream:I

.field private mArrowLeft:Landroid/widget/ImageButton;

.field private mArrowRight:Landroid/widget/ImageButton;

.field private final mBlurEffect:Lcom/android/systemui/volume/util/BlurEffect;

.field private mBlurView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private final mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

.field private mIsDualAudio:Z

.field private mIsSeekBarTouching:Z

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mRowContainer:Landroid/view/ViewGroup;

.field private mStartProgress:Z

.field private mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

.field private final mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

.field private final mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

.field private mWarningToastPopup:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$0Lt_xrZDjheogV6dj5yoSAOEnp0(Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->lambda$dispatch$8(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$438iXhOwLLMIN_Ypfh9eQF4gD_g(Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->lambda$initDialog$3(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NSRw5ZAAsGBVGdGSLKWghI4gMtE(Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;Lcom/samsung/systemui/splugins/volume/VolumePanelState;ZLcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->lambda$addRow$5(Lcom/samsung/systemui/splugins/volume/VolumePanelState;ZLcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RZ59Dg7az9t19vdt8Rv9Th66rSk(Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;ZLcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->lambda$addRow$4(ZLcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Vpinwax6OL6DwmoKniYLmvPQ7GU(Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->lambda$initDialog$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$iynYq8zBDp6ADzQzv7mDxc7Kq20(Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->lambda$initDialog$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$jkCEAa92KXK-Y8OmobFuA5sEfWU()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->lambda$initDialog$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$mBBiOS9ThlbepmfGOG9gRkPCLeo(Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->lambda$onChanged$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$mU1VPEMIYwb0Mm1gUTz74ckelnQ(Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->lambda$initArrowButtons$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$urgbzljN3V6kAeXyRwGAMfMZeWU(Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->lambda$initArrowButtons$7(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 3

    .line 63
    const-class v0, Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    invoke-interface {p1, v1}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->getFrontSubDisplay()Landroid/view/Display;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$style;->Theme_SystemUI_VolumePanelPresentation:I

    invoke-direct {p0, v0, v1, v2}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;I)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mObservers:Ljava/util/ArrayList;

    .line 65
    const-class v0, Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/HandlerWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 66
    const-class v0, Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/store/VolumePanelStore;

    iput-object v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 67
    const-class v0, Lcom/android/systemui/volume/view/VolumePanelMotion;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/view/VolumePanelMotion;

    iput-object v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 68
    const-class v0, Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mContext:Landroid/content/Context;

    .line 69
    const-class v0, Lcom/android/systemui/volume/util/BlurEffect;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/BlurEffect;

    iput-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mBlurEffect:Lcom/android/systemui/volume/util/BlurEffect;

    .line 71
    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz p1, :cond_0

    sget p1, Lcom/android/systemui/R$layout;->volume_sub_large_display_view:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/systemui/R$layout;->volume_sub_display_view:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Presentation;->setContentView(I)V

    .line 72
    sget p1, Lcom/android/systemui/R$id;->sub_display_dual_volume_arrow_left:I

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mArrowLeft:Landroid/widget/ImageButton;

    .line 73
    sget p1, Lcom/android/systemui/R$id;->sub_display_dual_volume_arrow_right:I

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mArrowRight:Landroid/widget/ImageButton;

    .line 74
    sget p1, Lcom/android/systemui/R$id;->sub_display_volume_row_container:I

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mRowContainer:Landroid/view/ViewGroup;

    .line 75
    sget p1, Lcom/android/systemui/R$id;->sub_display_volume_warning_toast_view:I

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mWarningToastPopup:Landroid/widget/TextView;

    return-void
.end method

.method private initDialog()V
    .locals 4

    .line 79
    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    .line 80
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 81
    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const-string v2, "SubScreenVolumeBar"

    .line 82
    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    sget-boolean v2, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz v2, :cond_0

    .line 85
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x2

    .line 86
    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    const v2, 0x10c0120

    .line 87
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    const/4 v2, 0x1

    .line 92
    invoke-virtual {p0, v2}, Landroid/app/Presentation;->setCanceledOnTouchOutside(Z)V

    const/16 v2, 0x7f5

    .line 93
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, -0x3

    .line 94
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v2, -0x1

    .line 95
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 96
    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->volume_panel_view_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 97
    new-instance v2, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;)V

    invoke-virtual {p0, v2}, Landroid/app/Presentation;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 118
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 120
    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$1;-><init>(Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private isActiveStream(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Z
    .locals 0

    .line 227
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p0

    if-ne p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTouched(Landroid/view/View;FF)Z
    .locals 4

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 232
    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    .line 233
    aget v1, p0, v0

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    aget v1, p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    cmpg-float p2, p2, v1

    if-gez p2, :cond_0

    aget p2, p0, v2

    int-to-float p2, p2

    cmpl-float p2, p3, p2

    if-lez p2, :cond_0

    aget p0, p0, v2

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p0, p1

    int-to-float p0, p0

    cmpg-float p0, p3, p0

    if-gez p0, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method private synthetic lambda$addRow$4(ZLcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 153
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-ne p1, v0, :cond_0

    .line 154
    iget-boolean p0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mIsDualAudio:Z

    return p0

    .line 156
    :cond_0
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p1

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$addRow$5(Lcom/samsung/systemui/splugins/volume/VolumePanelState;ZLcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 11

    .line 159
    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 160
    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v4, Lcom/android/systemui/R$layout;->volume_sub_large_display_row_view:I

    invoke-virtual {v0, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;

    .line 161
    iget-object v5, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    iget-object v7, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object v9, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    iget-boolean v2, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mIsDualAudio:Z

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    move v10, v1

    goto :goto_0

    :cond_0
    move v10, v3

    :goto_0
    move-object v4, v0

    move-object v6, p3

    move-object v8, p1

    invoke-virtual/range {v4 .. v10}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->initialize(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/android/systemui/volume/util/HandlerWrapper;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/android/systemui/volume/view/VolumePanelMotion;Z)V

    .line 162
    iget-object p2, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mRowContainer:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 163
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->isActiveStream(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 164
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mActiveStream:I

    .line 166
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mIsDualAudio:Z

    if-nez p1, :cond_4

    .line 167
    sget p1, Lcom/android/systemui/R$id;->volume_seekbar_outline_stroke:I

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 168
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 171
    :cond_2
    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v4, Lcom/android/systemui/R$layout;->volume_sub_display_row_view:I

    invoke-virtual {v0, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;

    .line 172
    iget-object v5, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    iget-object v7, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object v9, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    iget-boolean v2, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mIsDualAudio:Z

    if-eqz v2, :cond_3

    if-eqz p2, :cond_3

    move v10, v1

    goto :goto_1

    :cond_3
    move v10, v3

    :goto_1
    move-object v4, v0

    move-object v6, p3

    move-object v8, p1

    invoke-virtual/range {v4 .. v10}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->initialize(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/android/systemui/volume/util/HandlerWrapper;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/android/systemui/volume/view/VolumePanelMotion;Z)V

    .line 173
    iget-object p0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mRowContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private synthetic lambda$dispatch$8(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 1

    .line 280
    iget-object p0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 281
    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$initArrowButtons$6(Landroid/view/View;)V
    .locals 2

    .line 196
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_ARROW_LEFT_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v1, 0x1

    .line 197
    invoke-virtual {p1, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 198
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    .line 196
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method private synthetic lambda$initArrowButtons$7(Landroid/view/View;)V
    .locals 2

    .line 201
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_ARROW_RIGHT_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v1, 0x1

    .line 202
    invoke-virtual {p1, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 203
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    .line 201
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method private static synthetic lambda$initDialog$0()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$initDialog$1()V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mBlurEffect:Lcom/android/systemui/volume/util/BlurEffect;

    iget-object v1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mBlurView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$color;->sub_large_display_volume_expand_panel_bg_color_blur:I

    .line 103
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Lcom/android/systemui/R$dimen;->volume_sub_large_display_dual_panel_radius:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    .line 102
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/volume/util/BlurEffect;->setRealTimeBlur(Landroid/view/View;IF)V

    return-void
.end method

.method private synthetic lambda$initDialog$2()V
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mBlurEffect:Lcom/android/systemui/volume/util/BlurEffect;

    iget-object v1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mBlurView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$color;->sub_large_display_volume_seekbar_background_color_blur:I

    .line 110
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mContext:Landroid/content/Context;

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Lcom/android/systemui/R$dimen;->volume_sub_large_display_seek_bar_radius:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    .line 109
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/volume/util/BlurEffect;->setRealTimeBlur(Landroid/view/View;IF)V

    return-void
.end method

.method private synthetic lambda$initDialog$3(Landroid/content/DialogInterface;)V
    .locals 2

    .line 98
    sget-object p1, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda8;->INSTANCE:Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda8;

    .line 99
    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    if-eqz v0, :cond_1

    .line 100
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mIsDualAudio:Z

    if-eqz v0, :cond_0

    .line 101
    sget p1, Lcom/android/systemui/R$id;->sub_volume_panel_view_background:I

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mBlurView:Landroid/view/View;

    .line 102
    new-instance p1, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mRowContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->volume_seekbar_background:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mBlurView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 108
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->sub_volume_seekbar_fg:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 109
    new-instance p1, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;)V

    .line 115
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/volume/view/VolumePanelMotion;->startSubVolumePanelShowAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onChanged$9()V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mBlurEffect:Lcom/android/systemui/volume/util/BlurEffect;

    iget-object p0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mBlurView:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/util/BlurEffect;->hideBlur(Landroid/view/View;)V

    return-void
.end method

.method private resetVolumeRows(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 1

    .line 220
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mIsDualAudio:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mActiveStream:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->isActiveStream(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mRowContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 222
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->addRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 3

    .line 147
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_MULTI_SOUND_BT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v1

    sget v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    if-eq v1, v2, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 149
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v0

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 151
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;ZLcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 152
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V

    .line 158
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 139
    invoke-super {p0}, Landroid/app/Presentation;->dismiss()V

    .line 140
    invoke-virtual {p0}, Landroid/app/Presentation;->onStop()V

    .line 141
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_SUB_DISPLAY_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mRowContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 143
    iget-object p0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mWarningToastPopup:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 279
    iget-object p2, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    new-instance v0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    invoke-virtual {p2, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 285
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 286
    invoke-interface {p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public bridge synthetic dispatch(Ljava/lang/Object;Z)V
    .locals 0

    .line 41
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 239
    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz v0, :cond_4

    .line 240
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_TOUCH_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v2, 0x1

    .line 241
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    const/4 v3, 0x0

    .line 240
    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_1

    const/4 v4, 0x4

    if-eq v0, v4, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_TOUCH_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 260
    invoke-virtual {p1, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 261
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    .line 259
    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 262
    iput-boolean v3, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mStartProgress:Z

    return v2

    .line 246
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mIsSeekBarTouching:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mStartProgress:Z

    if-nez v0, :cond_3

    .line 247
    sget v0, Lcom/android/systemui/R$id;->sub_volume_panel_view_background:I

    invoke-virtual {p0, v0}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 248
    iget-boolean v4, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mIsDualAudio:Z

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-direct {p0, v0, v4, v5}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->isTouched(Landroid/view/View;FF)Z

    move-result v0

    if-nez v0, :cond_3

    .line 249
    :cond_2
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_TOUCH_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 250
    invoke-virtual {p1, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 251
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    .line 249
    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return v2

    .line 255
    :cond_3
    iput-boolean v3, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mStartProgress:Z

    .line 267
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Presentation;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispose()V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 374
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    .line 375
    iput-object v1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    if-eqz v0, :cond_1

    .line 378
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    .line 379
    iput-object v1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    :cond_1
    return-void
.end method

.method public initArrowButtons(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 5

    .line 179
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_MULTI_SOUND_BT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 180
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v2

    sget v3, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    if-eq v2, v3, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 181
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p1

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    move p1, v1

    .line 182
    :goto_0
    sget v0, Lcom/android/systemui/R$id;->sub_volume_panel_view_background:I

    invoke-virtual {p0, v0}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 183
    sget v2, Lcom/android/systemui/R$id;->sub_volume_panel_expand_view_background_stroke:I

    invoke-virtual {p0, v2}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 184
    iget-object v3, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mArrowLeft:Landroid/widget/ImageButton;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 185
    iget-boolean v3, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mIsDualAudio:Z

    if-eqz v3, :cond_5

    if-eqz p1, :cond_5

    .line 186
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mArrowRight:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 187
    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    .line 189
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mContext:Landroid/content/Context;

    sget-boolean v1, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    if-eqz v1, :cond_3

    .line 190
    sget v1, Lcom/android/systemui/R$drawable;->sub_volume_panel_expand_bg_blur:I

    goto :goto_1

    :cond_3
    sget v1, Lcom/android/systemui/R$drawable;->sub_volume_panel_expand_bg:I

    .line 189
    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 191
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->sub_volume_panel_expand_fg:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 195
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mArrowLeft:Landroid/widget/ImageButton;

    new-instance v0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mArrowRight:Landroid/widget/ImageButton;

    new-instance v0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 206
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mArrowRight:Landroid/widget/ImageButton;

    invoke-virtual {p0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 207
    sget-boolean p0, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz p0, :cond_6

    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    const/4 p0, 0x0

    .line 209
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 210
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 211
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 212
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 213
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_6
    :goto_2
    return-void
.end method

.method public onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 4

    .line 293
    sget-object v0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$2;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType:[I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 359
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Presentation;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 360
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->resetVolumeRows(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    goto/16 :goto_0

    .line 355
    :pswitch_1
    iput-boolean v3, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mIsSeekBarTouching:Z

    goto/16 :goto_0

    .line 351
    :pswitch_2
    iput-boolean v1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mIsSeekBarTouching:Z

    goto/16 :goto_0

    .line 347
    :pswitch_3
    iput-boolean v1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mStartProgress:Z

    goto/16 :goto_0

    .line 341
    :pswitch_4
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mWarningToastPopup:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 342
    iget-object p0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mWarningToastPopup:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 334
    :pswitch_5
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mWarningToastPopup:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 335
    iget-object p0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mWarningToastPopup:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 328
    :pswitch_6
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mArrowLeft:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 329
    iget-object p0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mArrowRight:Landroid/widget/ImageButton;

    invoke-virtual {p0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 323
    :pswitch_7
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mArrowLeft:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 324
    iget-object p0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mArrowRight:Landroid/widget/ImageButton;

    invoke-virtual {p0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 312
    :pswitch_8
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_SUB_DISPLAY_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 313
    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz p1, :cond_0

    .line 314
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;)V

    new-instance v2, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/systemui/volume/view/VolumePanelMotion;->startSubVolumePanelHideAnimation(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->dismiss()V

    goto :goto_0

    .line 295
    :pswitch_9
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mIsDualAudio:Z

    .line 296
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->initArrowButtons(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 297
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->addRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 298
    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz v0, :cond_1

    .line 299
    invoke-direct {p0}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->initDialog()V

    .line 300
    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 302
    :cond_1
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_VOLUME_SAFETY_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_VOLUME_LIMITER_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 303
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 304
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mWarningToastPopup:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    :cond_3
    invoke-virtual {p0}, Landroid/app/Presentation;->show()V

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 133
    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-direct {p0}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->initDialog()V

    return-void
.end method

.method public setStore()V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/store/VolumePanelStore;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 369
    iget-object v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

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

    .line 272
    iget-object v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    iget-object p0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->mObservers:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;-><init>(Ljava/util/ArrayList;Lcom/samsung/systemui/splugins/volume/VolumeObserver;)V

    return-object v0
.end method
