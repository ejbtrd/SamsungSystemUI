.class Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor$1;
.super Landroid/content/BroadcastReceiver;
.source "OpenThemeInteractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->addCallback(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;

.field final synthetic val$action:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;Ljava/lang/Runnable;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor$1;->this$0:Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor$1;->val$action:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor$1;->val$action:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
