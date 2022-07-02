.class final Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$LockscreenNotificationIconsOnlyComponentBuilder;
.super Ljava/lang/Object;
.source "DaggerGlobalRootComponent.java"

# interfaces
.implements Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LockscreenNotificationIconsOnlyComponentBuilder"
.end annotation


# instance fields
.field private nioView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

.field final synthetic this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)V
    .locals 0

    .line 5596
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$LockscreenNotificationIconsOnlyComponentBuilder;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;Lcom/android/systemui/dagger/DaggerGlobalRootComponent$1;)V
    .locals 0

    .line 5596
    invoke-direct {p0, p1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$LockscreenNotificationIconsOnlyComponentBuilder;-><init>(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyComponent;
    .locals 3

    .line 5608
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$LockscreenNotificationIconsOnlyComponentBuilder;->nioView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    const-class v1, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 5609
    new-instance v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$LockscreenNotificationIconsOnlyComponentImpl;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$LockscreenNotificationIconsOnlyComponentBuilder;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$LockscreenNotificationIconsOnlyComponentBuilder;->nioView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$LockscreenNotificationIconsOnlyComponentImpl;-><init>(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;Lcom/android/systemui/dagger/DaggerGlobalRootComponent$1;)V

    return-object v0
.end method

.method public nioView(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$LockscreenNotificationIconsOnlyComponentBuilder;
    .locals 0

    .line 5602
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$LockscreenNotificationIconsOnlyComponentBuilder;->nioView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    return-object p0
.end method

.method public bridge synthetic nioView(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyComponent$Builder;
    .locals 0

    .line 5596
    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$LockscreenNotificationIconsOnlyComponentBuilder;->nioView(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$LockscreenNotificationIconsOnlyComponentBuilder;

    move-result-object p0

    return-object p0
.end method
