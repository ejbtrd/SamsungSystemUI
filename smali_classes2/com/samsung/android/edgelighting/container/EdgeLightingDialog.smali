.class public Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;
.super Landroid/app/Dialog;
.source "EdgeLightingDialog.java"

# interfaces
.implements Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;,
        Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$AODShowState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAODShowState:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$AODShowState;

.field private mApplicationEffect:Lcom/samsung/android/edgelighting/container/ApplicationEffect;

.field private mDialogMain:Landroid/widget/RelativeLayout;

.field private mDozeDraw:Z

.field mEdgeAnimationListener:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;

.field mHandler:Landroid/os/Handler;

.field private mLightingPreview:Lcom/samsung/android/edgelighting/container/NotificationEffect;

.field private mNotificationEffect:Lcom/samsung/android/edgelighting/container/NotificationEffect;

.field private mTransparent:Z

.field private mUsingBlackBG:Z

.field private mWindowCallback:Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

.field private mWindowType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const v0, 0x1030011

    .line 74
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mUsingBlackBG:Z

    .line 54
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mTransparent:Z

    .line 56
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mDozeDraw:Z

    const/16 p1, 0x8b4

    .line 58
    iput p1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mWindowType:I

    .line 62
    new-instance p1, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$1;-><init>(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mHandler:Landroid/os/Handler;

    .line 536
    new-instance p1, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$4;

    invoke-direct {p1, p0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$4;-><init>(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)V

    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mEdgeAnimationListener:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "windowType"
        }
    .end annotation

    const v0, 0x1030011

    .line 78
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mUsingBlackBG:Z

    .line 54
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mTransparent:Z

    .line 56
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mDozeDraw:Z

    const/16 p1, 0x8b4

    .line 58
    iput p1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mWindowType:I

    .line 62
    new-instance p1, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$1;-><init>(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mHandler:Landroid/os/Handler;

    .line 536
    new-instance p1, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$4;

    invoke-direct {p1, p0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$4;-><init>(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)V

    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mEdgeAnimationListener:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;

    .line 79
    iput p2, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mWindowType:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->dismissInternal()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->selfDismissWindow()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/container/ApplicationEffect;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mApplicationEffect:Lcom/samsung/android/edgelighting/container/ApplicationEffect;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/container/NotificationEffect;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mNotificationEffect:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mWindowCallback:Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mTransparent:Z

    return p0
.end method

.method static synthetic access$600(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;Landroid/view/Window;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->updateBackground(Landroid/view/Window;)V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private applyWindowAttribute(Landroid/view/Window;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "window"
        }
    .end annotation

    .line 459
    iget p0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mWindowType:I

    invoke-virtual {p1, p0}, Landroid/view/Window;->setType(I)V

    const/4 p0, -0x1

    .line 461
    invoke-virtual {p1, p0, p0}, Landroid/view/Window;->setLayout(II)V

    const p0, 0x1000500

    .line 463
    invoke-virtual {p1, p0}, Landroid/view/Window;->addFlags(I)V

    const/high16 p0, 0x10000

    .line 469
    invoke-virtual {p1, p0}, Landroid/view/Window;->clearFlags(I)V

    const/16 p0, 0x18

    .line 471
    invoke-virtual {p1, p0}, Landroid/view/Window;->addFlags(I)V

    .line 473
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 475
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const/4 p1, 0x0

    .line 476
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/high16 p1, 0x20000

    .line 477
    invoke-virtual {p0, p1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    const/4 p1, 0x1

    .line 478
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-string p1, "EdgeLightingWindow"

    .line 479
    invoke-virtual {p0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private callSuperDismiss()V
    .locals 0

    .line 483
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 484
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method private dismissInternal()V
    .locals 3

    .line 506
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mAODShowState:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$AODShowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mAODShowState:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$AODShowState;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 508
    iput-object v1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mAODShowState:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$AODShowState;

    .line 510
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 514
    :cond_1
    sget-object v0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->TAG:Ljava/lang/String;

    const-string v2, "dismissInternal "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mNotificationEffect:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    if-eqz v0, :cond_2

    .line 516
    iget-object v2, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 517
    iput-object v1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mNotificationEffect:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    .line 519
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mApplicationEffect:Lcom/samsung/android/edgelighting/container/ApplicationEffect;

    if-eqz v0, :cond_3

    .line 520
    iget-object v2, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 521
    iput-object v1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mApplicationEffect:Lcom/samsung/android/edgelighting/container/ApplicationEffect;

    .line 524
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mLightingPreview:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    if-eqz v0, :cond_4

    .line 525
    iget-object v2, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 526
    iput-object v1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mLightingPreview:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    .line 529
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->callSuperDismiss()V

    return-void
.end method

.method private initApplicationView()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 286
    sget v0, Lcom/samsung/android/edgelighting/R$id;->dialog_main:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 289
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mApplicationEffect:Lcom/samsung/android/edgelighting/container/ApplicationEffect;

    if-eqz v1, :cond_1

    .line 290
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 291
    iput-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mApplicationEffect:Lcom/samsung/android/edgelighting/container/ApplicationEffect;

    .line 296
    :cond_1
    new-instance v0, Lcom/samsung/android/edgelighting/container/ApplicationEffect;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/edgelighting/container/ApplicationEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mApplicationEffect:Lcom/samsung/android/edgelighting/container/ApplicationEffect;

    .line 299
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 300
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mApplicationEffect:Lcom/samsung/android/edgelighting/container/ApplicationEffect;

    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mEdgeAnimationListener:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->setOnDialogListener(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;)V

    .line 302
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_2
    return-void
.end method

.method private initNotificationView(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 155
    sget v0, Lcom/samsung/android/edgelighting/R$id;->dialog_main:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 158
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mNotificationEffect:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    if-eqz v1, :cond_1

    .line 159
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mNotificationEffect:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    .line 163
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->makeEffectType(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)Lcom/samsung/android/edgelighting/container/NotificationEffect;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mNotificationEffect:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    .line 165
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 167
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mNotificationEffect:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mEdgeAnimationListener:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;

    invoke-virtual {p1, p0}, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->setOnDialogListener(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;)V

    :cond_2
    return-void
.end method

.method private initPreviewView(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 308
    sget v0, Lcom/samsung/android/edgelighting/R$id;->dialog_main:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 311
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mLightingPreview:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    if-eqz v1, :cond_1

    .line 312
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 313
    iput-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mLightingPreview:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    .line 317
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->makeEffectType(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)Lcom/samsung/android/edgelighting/container/NotificationEffect;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mLightingPreview:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    .line 319
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 321
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mLightingPreview:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mEdgeAnimationListener:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->setOnDialogListener(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;)V

    .line 323
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    :cond_2
    return-void
.end method

.method private makeEffectType(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)Lcom/samsung/android/edgelighting/container/NotificationEffect;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 207
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getEffectType()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    .line 208
    sget-object v0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->TAG:Ljava/lang/String;

    const-string v1, " + effect "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v0, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;-><init>(Landroid/content/Context;)V

    .line 210
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getSpecialEffect()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 211
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getSpecialEffect()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->setSpecialEffect(Landroid/net/Uri;)Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->isCenterPositionSpecialEffect()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->setIsCenterPosition(Z)Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;

    move-result-object p0

    .line 212
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->isEdgeSpecialEffect()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->setIsEdgeSpecialEffect(Z)Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->isSpecialAnimationStartAfterToastFinished()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->setSpecialAnimationStartAfterToastFinished(Z)Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;

    move-result-object p0

    .line 213
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getSpecialWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getSpecialHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->setSpecialEffectSize(II)Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;

    .line 216
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getFrameEffect()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 217
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getFrameEffect()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->setFrameEffect(Landroid/net/Uri;)Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->isEdgeFrameEffect()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->setIsEdgeFrameEffect(Z)Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;

    .line 220
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getRepeatCount()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->setRepeatCount(I)Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;

    .line 222
    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/container/NotificationEffect$Builder;->build()Lcom/samsung/android/edgelighting/container/NotificationEffect;

    move-result-object p0

    return-object p0

    .line 226
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getEffectType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 276
    new-instance v0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 277
    invoke-virtual {v0, p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->setIsNoFrame(Z)V

    goto/16 :goto_0

    .line 255
    :pswitch_0
    new-instance v0, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 252
    :pswitch_1
    new-instance v0, Lcom/samsung/android/edgelighting/container/NotificationEchoEffect;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/edgelighting/container/NotificationEchoEffect;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 249
    :pswitch_2
    new-instance v0, Lcom/samsung/android/edgelighting/container/NotificationEclipseEffect;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/edgelighting/container/NotificationEclipseEffect;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 246
    :pswitch_3
    new-instance v0, Lcom/samsung/android/edgelighting/container/NotificationFireworksEffect;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/edgelighting/container/NotificationFireworksEffect;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 243
    :pswitch_4
    new-instance v0, Lcom/samsung/android/edgelighting/container/NotificationHeartEffect;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/edgelighting/container/NotificationHeartEffect;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 240
    :pswitch_5
    new-instance v0, Lcom/samsung/android/edgelighting/container/NotificationBubbleEffect;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/edgelighting/container/NotificationBubbleEffect;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 237
    :pswitch_6
    new-instance v0, Lcom/samsung/android/edgelighting/container/NotificationWaveEffect;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/edgelighting/container/NotificationWaveEffect;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 234
    :pswitch_7
    new-instance v0, Lcom/samsung/android/edgelighting/container/NotificationReflectEffect;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/edgelighting/container/NotificationReflectEffect;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 231
    :pswitch_8
    new-instance v0, Lcom/samsung/android/edgelighting/container/NotificationGlowEffect;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/edgelighting/container/NotificationGlowEffect;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 228
    :pswitch_9
    new-instance v0, Lcom/samsung/android/edgelighting/container/NotificationLineGradationEffect;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/edgelighting/container/NotificationLineGradationEffect;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 272
    :pswitch_a
    new-instance v0, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/edgelighting/container/NotificationNormalEffect;-><init>(Landroid/content/Context;)V

    .line 280
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->isMultiResolutionSupoorted()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->setIsMultiResolutionSupoorted(Z)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method private selfDismissWindow()V
    .locals 4

    .line 488
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mWindowCallback:Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

    if-eqz v0, :cond_0

    .line 489
    invoke-interface {v0}, Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;->onDismissEdgeWindow()V

    .line 492
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 494
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 495
    iget-boolean v2, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mUsingBlackBG:Z

    if-eqz v2, :cond_1

    const/high16 v2, -0x40800000    # -1.0f

    .line 496
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 498
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 501
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 502
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private setApplicationInfo([I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectColors"
        }
    .end annotation

    .line 332
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mApplicationEffect:Lcom/samsung/android/edgelighting/container/ApplicationEffect;

    invoke-virtual {p0, p1}, Lcom/samsung/android/edgelighting/container/ApplicationEffect;->setEffectColors([I)V

    return-void
.end method

.method private updateBackground(Landroid/view/Window;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "window"
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 127
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mUsingBlackBG:Z

    const/4 v1, 0x0

    const/4 v2, -0x3

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateBackground : OPAQUE(usingBlack)"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p1, v2}, Landroid/view/Window;->setFormat(I)V

    .line 130
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 131
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mTransparent:Z

    goto :goto_0

    .line 133
    :cond_0
    sget-object v0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateBackground : TRANSPARENT"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p1, v2}, Landroid/view/Window;->setFormat(I)V

    .line 135
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v0, 0x1

    .line 136
    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mTransparent:Z

    .line 138
    :goto_0
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 139
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mUsingBlackBG:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 140
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_1

    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    .line 142
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 144
    :goto_1
    iget-boolean p0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mDozeDraw:Z

    const/high16 v0, 0x40000

    if-eqz p0, :cond_2

    .line 145
    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    goto :goto_2

    .line 147
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->semClearExtensionFlags(I)V

    :goto_2
    const/16 p0, 0x10

    .line 150
    invoke-virtual {p1, p0}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    return-void
.end method


# virtual methods
.method public getEffectView()Landroid/view/View;
    .locals 0

    .line 533
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mNotificationEffect:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 175
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mNotificationEffect:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->isTouchable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    sget-object v0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->TAG:Ljava/lang/String;

    const-string v1, " onAttached Window clear FLAG NOT TOUCHABLE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 84
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 85
    sget p1, Lcom/samsung/android/edgelighting/R$layout;->edge_light_main:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 86
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->applyWindowAttribute(Landroid/view/Window;)V

    .line 87
    sget p1, Lcom/samsung/android/edgelighting/R$id;->dialog_main:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    .line 88
    sget p1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v0, 0x186a0

    if-lt p1, v0, :cond_0

    .line 89
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 92
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$2;-><init>(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public refreshBackground()V
    .locals 1

    .line 119
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0, v0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->updateBackground(Landroid/view/Window;)V

    :cond_0
    return-void
.end method

.method public registerEdgeWindowCallback(Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 385
    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mWindowCallback:Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

    :cond_0
    return-void
.end method

.method public setDozeDrawMode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 379
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mDozeDraw:Z

    return-void
.end method

.method public show()V
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mAODShowState:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$AODShowState;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$AODShowState;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$AODShowState;-><init>(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mAODShowState:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$AODShowState;

    .line 106
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mAODShowState:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$AODShowState;

    invoke-virtual {v1}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$AODShowState;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mAODShowState:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$AODShowState;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 108
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->updateBackground(Landroid/view/Window;)V

    .line 109
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mWindowCallback:Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

    if-eqz v0, :cond_1

    .line 112
    invoke-interface {v0}, Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;->onShowEdgeWindow()V

    .line 114
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public showPreview(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "info",
            "isShowMorphView"
        }
    .end annotation

    const/4 v0, 0x0

    .line 419
    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mUsingBlackBG:Z

    .line 420
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->show()V

    .line 421
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->initPreviewView(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V

    .line 422
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mLightingPreview:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-virtual {v0, p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->setEdgeEffectInfo(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V

    if-nez p2, :cond_0

    .line 424
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mLightingPreview:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->setDisableShowMorphView()V

    .line 426
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mLightingPreview:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->show()V

    return-void
.end method

.method public startApplication([I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectColors"
        }
    .end annotation

    const/4 v0, 0x0

    .line 396
    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mUsingBlackBG:Z

    .line 397
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->show()V

    .line 398
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->initApplicationView()V

    .line 399
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->setApplicationInfo([I)V

    .line 400
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mApplicationEffect:Lcom/samsung/android/edgelighting/container/ApplicationEffect;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/ApplicationEffect;->show()V

    return-void
.end method

.method public startEdgeEffect(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 337
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getUsingBlackBG()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mUsingBlackBG:Z

    .line 338
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->show()V

    .line 339
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->initNotificationView(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V

    .line 340
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mNotificationEffect:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-virtual {v0, p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->setEdgeEffectInfo(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V

    .line 341
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mNotificationEffect:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->show()V

    return-void
.end method

.method public stopApplication()V
    .locals 2

    .line 431
    sget-object v0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopApplication"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mApplicationEffect:Lcom/samsung/android/edgelighting/container/ApplicationEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mApplicationEffect:Lcom/samsung/android/edgelighting/container/ApplicationEffect;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/ApplicationEffect;->dismiss()V

    :cond_0
    return-void
.end method

.method public stopEdgeEffect()V
    .locals 2

    .line 439
    sget-object v0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopEdgeEffect"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mNotificationEffect:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    if-eqz p0, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->dismiss()V

    :cond_0
    return-void
.end method

.method public stopPreview()V
    .locals 4

    .line 447
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mLightingPreview:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->dismiss()V

    .line 450
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$3;-><init>(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public unRegisterEdgeWindowCallback(Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    const/4 p1, 0x0

    .line 391
    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mWindowCallback:Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

    return-void
.end method

.method public updatePreview(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mLightingPreview:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {v0, p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->setEdgeEffectInfo(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V

    .line 368
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mLightingPreview:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->update()V

    :cond_0
    return-void
.end method

.method public updateText(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "info",
            "isDirty"
        }
    .end annotation

    .line 347
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    sget-object p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateNotification not showing"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mNotificationEffect:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {v0, p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->setEdgeEffectInfo(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V

    .line 356
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mNotificationEffect:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-virtual {p1, p2}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->updateText(Z)V

    .line 358
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method
