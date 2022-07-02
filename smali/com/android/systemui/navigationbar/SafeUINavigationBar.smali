.class public Lcom/android/systemui/navigationbar/SafeUINavigationBar;
.super Lcom/android/systemui/SystemUI;
.source "SafeUINavigationBar.java"


# instance fields
.field private mView:Lcom/android/systemui/navigationbar/SafeUINavigationBarView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onBootCompleted()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 2

    const-string v0, "SafeNavigationBar"

    const-string/jumbo v1, "start"

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/SafeUINavigationBar;->mView:Lcom/android/systemui/navigationbar/SafeUINavigationBarView;

    .line 43
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->show()V

    return-void
.end method
