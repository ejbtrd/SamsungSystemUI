.class final Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$KeyguardUserSwitcherComponentFactory;
.super Ljava/lang/Object;
.source "DaggerGlobalRootComponent.java"

# interfaces
.implements Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyguardUserSwitcherComponentFactory"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)V
    .locals 0

    .line 5524
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$KeyguardUserSwitcherComponentFactory;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;Lcom/android/systemui/dagger/DaggerGlobalRootComponent$1;)V
    .locals 0

    .line 5524
    invoke-direct {p0, p1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$KeyguardUserSwitcherComponentFactory;-><init>(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)V

    return-void
.end method


# virtual methods
.method public build(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;)Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent;
    .locals 2

    .line 5528
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5529
    new-instance v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$KeyguardUserSwitcherComponentImpl;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$KeyguardUserSwitcherComponentFactory;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$KeyguardUserSwitcherComponentImpl;-><init>(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;Lcom/android/systemui/dagger/DaggerGlobalRootComponent$1;)V

    return-object v0
.end method
