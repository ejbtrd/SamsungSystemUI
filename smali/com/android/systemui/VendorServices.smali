.class public Lcom/android/systemui/VendorServices;
.super Lcom/android/systemui/SystemUI;
.source "VendorServices.java"


# instance fields
.field public mBinderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

.field public mUiThreadMonitor:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    .line 47
    sget-boolean p1, Lcom/android/systemui/Rune;->SYSUI_UI_THREAD_MONITOR:Z

    if-eqz p1, :cond_0

    .line 48
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/SystemUIFactory;->getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent;

    move-result-object p1

    .line 49
    invoke-interface {p1, p0}, Lcom/android/systemui/dagger/SysUIComponent;->inject(Lcom/android/systemui/VendorServices;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/VendorServices;->mUiThreadMonitor:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    if-eqz p0, :cond_0

    .line 74
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 56
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_UI_THREAD_MONITOR:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/VendorServices;->mUiThreadMonitor:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->start()V

    .line 60
    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_BINDER_CALL_MONITOR:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/DejankUtils;->STRICT_MODE_ENABLED:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/VendorServices;->mBinderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {v0}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->init()V

    .line 64
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->getDebugLevel()I

    move-result v0

    sget v1, Lcom/android/systemui/util/DeviceType;->DEBUG_LEVEL_MID:I

    if-ne v0, v1, :cond_1

    .line 65
    iget-object p0, p0, Lcom/android/systemui/VendorServices;->mBinderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->startMonitoring(I)Z

    :cond_1
    return-void
.end method
