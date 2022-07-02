.class Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SplashScreenViewSupplier;
.super Ljava/lang/Object;
.source "StartingSurfaceDrawer.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SplashScreenViewSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Landroid/window/SplashScreenView;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsViewSet:Z

.field private mView:Landroid/window/SplashScreenView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$1;)V
    .locals 0

    .line 438
    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SplashScreenViewSupplier;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Landroid/window/SplashScreenView;
    .locals 1

    .line 451
    monitor-enter p0

    .line 452
    :catch_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SplashScreenViewSupplier;->mIsViewSet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 454
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 458
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SplashScreenViewSupplier;->mView:Landroid/window/SplashScreenView;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 459
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 438
    invoke-virtual {p0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SplashScreenViewSupplier;->get()Landroid/window/SplashScreenView;

    move-result-object p0

    return-object p0
.end method

.method setView(Landroid/window/SplashScreenView;)V
    .locals 0

    .line 442
    monitor-enter p0

    .line 443
    :try_start_0
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SplashScreenViewSupplier;->mView:Landroid/window/SplashScreenView;

    const/4 p1, 0x1

    .line 444
    iput-boolean p1, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SplashScreenViewSupplier;->mIsViewSet:Z

    .line 445
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 446
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
