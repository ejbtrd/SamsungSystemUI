.class public Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;
.super Ljava/lang/Object;
.source "FloatingRotationButton.java"

# interfaces
.implements Lcom/android/systemui/navigationbar/RotationButton;


# instance fields
.field private mCanShow:Z

.field private final mContext:Landroid/content/Context;

.field private final mDiameter:I

.field private mIsShowing:Z

.field private mKeyButtonDrawable:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

.field private final mKeyButtonView:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

.field private final mMargin:I

.field private mRotationButtonController:Lcom/android/systemui/navigationbar/RotationButtonController;

.field private mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field private mVisibilityChangedCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mCanShow:Z

    .line 67
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mWindowManager:Landroid/view/WindowManager;

    .line 69
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->rotate_suggestion:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    const/4 v1, 0x0

    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 74
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_0

    .line 75
    sget v1, Lcom/android/systemui/R$dimen;->samsung_floating_rotation_button_diameter:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/systemui/R$dimen;->floating_rotation_button_diameter:I

    .line 74
    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mDiameter:I

    if-eqz v0, :cond_1

    .line 76
    sget v1, Lcom/android/systemui/R$dimen;->samsung_floating_rotation_button_bottom_margin:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_1

    .line 77
    :cond_1
    sget v1, Lcom/android/systemui/R$dimen;->floating_rotation_button_min_margin:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/android/systemui/R$dimen;->rounded_corner_content_padding:I

    .line 78
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 77
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_1
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mMargin:I

    if-eqz v0, :cond_2

    .line 81
    const-class p1, Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStore;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mIsShowing:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;)Ljava/util/function/Consumer;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mVisibilityChangedCallback:Ljava/util/function/Consumer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;)Lcom/android/systemui/navigationbar/buttons/KeyButtonView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    return-object p0
.end method


# virtual methods
.method public getCurrentView()Landroid/view/View;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    return-object p0
.end method

.method public getImageDrawable()Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    return-object p0
.end method

.method public hide()Z
    .locals 3

    .line 160
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mIsShowing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 164
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mIsShowing:Z

    .line 165
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mVisibilityChangedCallback:Ljava/util/function/Consumer;

    if-eqz p0, :cond_1

    .line 166
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public isVisible()Z
    .locals 0

    .line 173
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mIsShowing:Z

    return p0
.end method

.method public setCanShowRotationButton(Z)V
    .locals 0

    .line 216
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mCanShow:Z

    if-nez p1, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->hide()Z

    :cond_0
    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->setDarkIntensity(F)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnHoverListener(Landroid/view/View$OnHoverListener;)V
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method public setRotationButtonController(Lcom/android/systemui/navigationbar/RotationButtonController;)V
    .locals 1

    .line 87
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mRotationButtonController:Lcom/android/systemui/navigationbar/RotationButtonController;

    .line 88
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/RotationButtonController;->getLightIconColor()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mRotationButtonController:Lcom/android/systemui/navigationbar/RotationButtonController;

    .line 89
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/RotationButtonController;->getDarkIconColor()I

    move-result v0

    .line 88
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->updateIcon(II)V

    return-void
.end method

.method public setVisibilityChangedCallback(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mVisibilityChangedCallback:Ljava/util/function/Consumer;

    return-void
.end method

.method public show()Z
    .locals 12

    .line 104
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mCanShow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mIsShowing:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mIsShowing:Z

    const/16 v2, 0x8

    .line 109
    sget-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v3, :cond_1

    const/16 v2, 0x108

    :cond_1
    move v10, v2

    .line 112
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mDiameter:I

    iget v8, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mMargin:I

    const/16 v9, 0x7e8

    const/4 v11, -0x3

    move-object v4, v2

    move v5, v6

    move v7, v8

    invoke-direct/range {v4 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 115
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v4, "FloatingRotationButton"

    .line 116
    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {v2, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/16 v1, 0x55

    if-eqz v3, :cond_2

    .line 119
    iget-object v3, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v4, Lcom/android/systemui/navigationbar/store/EventType;->GET_INT_FLOATING_ROTATE_BUTTON_POSITION:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v5, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v5}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    sget-object v6, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_DEFAULT:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v1

    const-class v5, Ljava/lang/Integer;

    .line 119
    invoke-interface {v3, p0, v4, v1, v5}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    .line 123
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    if-eqz v3, :cond_6

    if-eq v3, v0, :cond_5

    const/4 v1, 0x2

    if-eq v3, v1, :cond_4

    const/4 v1, 0x3

    if-eq v3, v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x33

    .line 134
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :cond_4
    const/16 v1, 0x35

    .line 131
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    .line 128
    :cond_5
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :cond_6
    const/16 v1, 0x53

    .line 125
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 140
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    invoke-interface {v1, v3, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->canAnimate()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 142
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->resetAnimation()V

    .line 143
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->startAnimation()V

    .line 145
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    new-instance v2, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton$1;-><init>(Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return v0

    :cond_8
    :goto_1
    return v1
.end method

.method public updateIcon(II)V
    .locals 10

    .line 178
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_0

    .line 179
    iget-object p2, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mRotationButtonController:Lcom/android/systemui/navigationbar/RotationButtonController;

    invoke-virtual {p2}, Lcom/android/systemui/navigationbar/RotationButtonController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p2, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mRotationButtonController:Lcom/android/systemui/navigationbar/RotationButtonController;

    .line 180
    invoke-virtual {p2}, Lcom/android/systemui/navigationbar/RotationButtonController;->getIconResId()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move v2, p1

    .line 179
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->create(Landroid/content/Context;IIIZLandroid/graphics/Color;)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 182
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    iget-object p2, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$drawable;->samsung_hidden_visual_cue_rotate_btn:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 185
    :cond_0
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    .line 186
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f6b851f    # 0.92f

    .line 185
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->valueOf(FFFF)Landroid/graphics/Color;

    move-result-object v9

    .line 187
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mRotationButtonController:Lcom/android/systemui/navigationbar/RotationButtonController;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/RotationButtonController;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mRotationButtonController:Lcom/android/systemui/navigationbar/RotationButtonController;

    .line 188
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/RotationButtonController;->getIconResId()I

    move-result v7

    const/4 v8, 0x0

    move v5, p1

    move v6, p2

    .line 187
    invoke-static/range {v4 .. v9}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->create(Landroid/content/Context;IIIZLandroid/graphics/Color;)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 191
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    invoke-virtual {p1, p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
