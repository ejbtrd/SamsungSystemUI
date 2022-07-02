.class public Lcom/android/systemui/navigationbar/SafeUINavigationBarView;
.super Ljava/lang/Object;
.source "SafeUINavigationBarView.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field mView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$qQ_TJ9m9feOyMIO0uOPYaKLNz-s(Lcom/android/systemui/navigationbar/SafeUINavigationBarView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->lambda$show$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$show$0(Landroid/view/View;)V
    .locals 2

    const-string p1, "SafeNavigationBarView"

    const-string v0, "onClick"

    .line 51
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x4

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0, v0}, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->sendEvent(III)V

    const/4 v1, 0x1

    .line 54
    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->sendEvent(III)V

    return-void
.end method

.method private sendEvent(III)V
    .locals 6

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->sendEvent(IIIJ)V

    return-void
.end method

.method private sendEvent(IIIJ)V
    .locals 14

    .line 69
    new-instance v13, Landroid/view/KeyEvent;

    or-int/lit8 v0, p3, 0x8

    or-int/lit8 v11, v0, 0x40

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v12, 0x101

    move-object v0, v13

    move-wide/from16 v1, p4

    move-wide/from16 v3, p4

    move/from16 v5, p2

    move v6, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 74
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v13, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method


# virtual methods
.method public show()V
    .locals 8

    const-string v0, "SafeNavigationBarView"

    const-string/jumbo v1, "show"

    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x7e3

    const v6, 0x20840068

    const/4 v7, -0x3

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 41
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NavigationBar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    .line 43
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 45
    iget-object v2, p0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$layout;->safe_mode_navigation_bar:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->mView:Landroid/view/View;

    .line 48
    sget v3, Lcom/android/systemui/R$id;->prev_btn_area:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 49
    new-instance v3, Lcom/android/systemui/navigationbar/SafeUINavigationBarView$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/SafeUINavigationBarView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/SafeUINavigationBarView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->mContext:Landroid/content/Context;

    const-class v3, Landroid/view/WindowManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->mView:Landroid/view/View;

    invoke-interface {v2, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "NavigationBar addView Exception :"

    .line 60
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
