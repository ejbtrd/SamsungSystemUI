.class abstract Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;
.super Ljava/lang/Object;
.source "AbsShortcutImageCreator.java"

# interfaces
.implements Lcom/android/systemui/keyguardimage/ImageCreator;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isSecure()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method getBottomMargin(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;)I
    .locals 2

    .line 65
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mContext:Landroid/content/Context;

    .line 66
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    iget v0, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget v1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    if-le v0, v1, :cond_1

    sget v0, Lcom/android/systemui/R$dimen;->shortcut_icon_vertical_margin_land:I

    goto :goto_1

    .line 72
    :cond_1
    sget v0, Lcom/android/systemui/R$dimen;->shortcut_icon_vertical_margin_port:I

    goto :goto_1

    .line 67
    :cond_2
    :goto_0
    iget v0, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget v1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    if-le v0, v1, :cond_3

    .line 68
    sget v0, Lcom/android/systemui/R$dimen;->shortcut_icon_vertical_margin_land_tablet:I

    goto :goto_1

    .line 69
    :cond_3
    sget v0, Lcom/android/systemui/R$dimen;->shortcut_icon_vertical_margin_port_tablet:I

    .line 74
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    iget p1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method getColor(Z)I
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->isSecure()Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x20000000

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/high16 p0, -0x1000000

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 36
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    return-object p0
.end method

.method getShortcutManager()Lcom/android/systemui/statusbar/ShortcutManager;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    if-nez v0, :cond_0

    .line 30
    const-class v0, Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ShortcutManager;

    iput-object v0, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    return-object p0
.end method

.method getSideMargin(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;)I
    .locals 2

    .line 79
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mContext:Landroid/content/Context;

    .line 80
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    iget v0, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget v1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    if-le v0, v1, :cond_1

    .line 86
    sget v0, Lcom/android/systemui/R$dimen;->keyguard_shrotcut_dls_default_side_margin_land:I

    goto :goto_1

    .line 87
    :cond_1
    sget v0, Lcom/android/systemui/R$dimen;->keyguard_shrotcut_dls_default_side_margin:I

    goto :goto_1

    .line 81
    :cond_2
    :goto_0
    iget v0, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget v1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    if-le v0, v1, :cond_3

    .line 82
    sget v0, Lcom/android/systemui/R$dimen;->keyguard_shrotcut_dls_default_side_margin_land_tablet:I

    goto :goto_1

    .line 83
    :cond_3
    sget v0, Lcom/android/systemui/R$dimen;->keyguard_shrotcut_dls_default_side_margin_tablet:I

    .line 90
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    iget p1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;IZLcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;)V
    .locals 3

    .line 47
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->keyguard_shrotcut_default_size_tablet:I

    .line 50
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 51
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    if-nez p3, :cond_2

    .line 54
    iget p3, p4, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    const/4 p4, 0x3

    if-ne p3, p4, :cond_1

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    .line 59
    invoke-virtual {p1, p0}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p3, 0x0

    .line 55
    invoke-virtual {p1, p3}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 56
    iget-object p3, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-virtual {p3, p2}, Lcom/android/systemui/statusbar/ShortcutManager;->getShortcutDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mShortcutManager:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/ShortcutManager;->getShortcutContentDescription(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method
