.class public Lcom/android/systemui/navigationbar/interactor/InteractorFactory;
.super Ljava/lang/Object;
.source "InteractorFactory.java"


# instance fields
.field private mProvider:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    .line 23
    const-class v1, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    new-instance v2, Lcom/android/systemui/navigationbar/interactor/ColorSettingImpl;

    invoke-direct {v2, p1, p2}, Lcom/android/systemui/navigationbar/interactor/ColorSettingImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    const-class v1, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;

    new-instance v2, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;

    invoke-direct {v2, p2}, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;-><init>(Lcom/android/systemui/util/SettingsHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    const-class v1, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor;

    new-instance v2, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor;

    invoke-direct {v2, p1}, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    const-class v1, Lcom/android/systemui/navigationbar/interactor/GestureHintInteractor;

    new-instance v2, Lcom/android/systemui/navigationbar/interactor/GestureHintInteractor;

    invoke-direct {v2, p2}, Lcom/android/systemui/navigationbar/interactor/GestureHintInteractor;-><init>(Lcom/android/systemui/util/SettingsHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    const-class v1, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;

    new-instance v2, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;

    invoke-direct {v2, p1}, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    const-class v1, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;

    new-instance v2, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;

    invoke-direct {v2}, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    const-class v1, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;

    new-instance v2, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;

    invoke-direct {v2, p3, p2}, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/util/SettingsHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    const-class v1, Lcom/android/systemui/navigationbar/interactor/UseThemeDefaultInteractor;

    new-instance v2, Lcom/android/systemui/navigationbar/interactor/UseThemeDefaultInteractor;

    invoke-direct {v2, p2}, Lcom/android/systemui/navigationbar/interactor/UseThemeDefaultInteractor;-><init>(Lcom/android/systemui/util/SettingsHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    const-class v1, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;

    new-instance v2, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;

    invoke-direct {v2, p3}, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object p3, p0, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    const-class v0, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;

    new-instance v1, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;

    invoke-direct {v1, p2}, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;-><init>(Lcom/android/systemui/util/SettingsHelper;)V

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object p3, p0, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    const-class v0, Lcom/android/systemui/navigationbar/interactor/ButtonPositionInteractor;

    new-instance v1, Lcom/android/systemui/navigationbar/interactor/ButtonPositionInteractor;

    invoke-direct {v1, p2}, Lcom/android/systemui/navigationbar/interactor/ButtonPositionInteractor;-><init>(Lcom/android/systemui/util/SettingsHelper;)V

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object p3, p0, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    const-class v0, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;

    new-instance v1, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;

    invoke-direct {v1, p2}, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;-><init>(Lcom/android/systemui/util/SettingsHelper;)V

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object p3, p0, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    const-class v0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;

    new-instance v1, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;

    invoke-direct {v1}, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;-><init>()V

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    const-class p3, Lcom/android/systemui/navigationbar/interactor/SubScreenWidgetInteractor;

    new-instance v0, Lcom/android/systemui/navigationbar/interactor/SubScreenWidgetInteractor;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/navigationbar/interactor/SubScreenWidgetInteractor;-><init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;)V

    invoke-interface {p0, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 40
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public update(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
