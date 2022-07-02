.class public Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;
.super Ljava/lang/Object;
.source "CustomTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/external/CustomTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomDetailAdapter"
.end annotation


# instance fields
.field private mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

.field private mService:Landroid/service/quicksettings/IQSTileService;

.field final synthetic this$0:Lcom/android/systemui/qs/external/CustomTile;


# direct methods
.method public static synthetic $r8$lambda$HteI4Jf90gBzwr-VP491nXBGQ8M(Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->lambda$setToggleState$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/external/CustomTile;Landroid/service/quicksettings/IQSTileService;)V
    .locals 0

    .line 982
    iput-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 962
    new-instance p1, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter$1;-><init>(Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;)V

    iput-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    .line 983
    iput-object p2, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    return-void
.end method

.method private synthetic lambda$setToggleState$0(Ljava/lang/Boolean;)V
    .locals 0

    .line 1110
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->setToggleState(Z)V

    return-void
.end method

.method private shouldBeUnlock(Z)Z
    .locals 3

    .line 1137
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->access$1700(Lcom/android/systemui/qs/external/CustomTile;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1139
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->access$1700(Lcom/android/systemui/qs/external/CustomTile;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    return v1

    .line 1141
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {p0}, Lcom/android/systemui/qs/external/CustomTile;->access$1700(Lcom/android/systemui/qs/external/CustomTile;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "OFF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1040
    iget-object p2, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return-object p3

    .line 1046
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {p2}, Lcom/android/systemui/qs/external/CustomTile;->access$300(Lcom/android/systemui/qs/external/CustomTile;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 1047
    iget-object p2, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {p2}, Lcom/android/systemui/qs/external/CustomTile;->access$900(Lcom/android/systemui/qs/external/CustomTile;)Lcom/android/systemui/qs/external/TileServiceManager;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    .line 1048
    iget-object p2, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {p2}, Landroid/service/quicksettings/IQSTileService;->onStartListening()V

    .line 1049
    iget-object p2, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {p2}, Lcom/android/systemui/qs/external/CustomTile;->access$1000(Lcom/android/systemui/qs/external/CustomTile;)Landroid/widget/RemoteViews;

    move-result-object p2

    goto :goto_0

    .line 1051
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {p2}, Landroid/service/quicksettings/IQSTileService;->semGetDetailView()Landroid/widget/RemoteViews;

    move-result-object p2

    .line 1052
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v1}, Lcom/android/systemui/qs/external/CustomTile;->access$500(Lcom/android/systemui/qs/external/CustomTile;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1053
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v1, p2}, Lcom/android/systemui/qs/external/CustomTile;->access$1002(Lcom/android/systemui/qs/external/CustomTile;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 1054
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v1}, Lcom/android/systemui/qs/external/CustomTile;->access$900(Lcom/android/systemui/qs/external/CustomTile;)Lcom/android/systemui/qs/external/TileServiceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    .line 1055
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v0}, Landroid/service/quicksettings/IQSTileService;->onStartListening()V

    .line 1058
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->access$1100(Lcom/android/systemui/qs/external/CustomTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDetailView remoteViews = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_3

    return-object p3

    .line 1062
    :cond_3
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1063
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-virtual {p2, p1, v0, p0, p3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;)Landroid/view/View;

    move-result-object p0

    .line 1064
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object p3
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x10c

    return p0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 3

    .line 1074
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1077
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->access$300(Lcom/android/systemui/qs/external/CustomTile;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1078
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {p0}, Lcom/android/systemui/qs/external/CustomTile;->access$1200(Lcom/android/systemui/qs/external/CustomTile;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 1081
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v0}, Landroid/service/quicksettings/IQSTileService;->semGetSettingsIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1082
    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v2}, Lcom/android/systemui/qs/external/CustomTile;->access$500(Lcom/android/systemui/qs/external/CustomTile;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1083
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {p0, v0}, Lcom/android/systemui/qs/external/CustomTile;->access$1202(Lcom/android/systemui/qs/external/CustomTile;Landroid/content/Intent;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v0

    :catch_0
    return-object v1
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 3

    .line 988
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 991
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->access$300(Lcom/android/systemui/qs/external/CustomTile;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 992
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {p0}, Lcom/android/systemui/qs/external/CustomTile;->access$400(Lcom/android/systemui/qs/external/CustomTile;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 995
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v0}, Landroid/service/quicksettings/IQSTileService;->semGetDetailViewTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 996
    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v2}, Lcom/android/systemui/qs/external/CustomTile;->access$500(Lcom/android/systemui/qs/external/CustomTile;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 997
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {p0, v0}, Lcom/android/systemui/qs/external/CustomTile;->access$402(Lcom/android/systemui/qs/external/CustomTile;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v0

    :catch_0
    return-object v1
.end method

.method public getToggleEnabled()Z
    .locals 0

    .line 1035
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {p0}, Lcom/android/systemui/qs/external/CustomTile;->access$800(Lcom/android/systemui/qs/external/CustomTile;)Z

    move-result p0

    return p0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 3

    .line 1009
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1012
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->access$300(Lcom/android/systemui/qs/external/CustomTile;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1013
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->access$600(Lcom/android/systemui/qs/external/CustomTile;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1014
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {p0}, Lcom/android/systemui/qs/external/CustomTile;->access$700(Lcom/android/systemui/qs/external/CustomTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p0

    iget p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 1018
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v0}, Landroid/service/quicksettings/IQSTileService;->semIsToggleButtonExists()Z

    move-result v0

    .line 1019
    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v2}, Lcom/android/systemui/qs/external/CustomTile;->access$500(Lcom/android/systemui/qs/external/CustomTile;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1020
    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v2, v0}, Lcom/android/systemui/qs/external/CustomTile;->access$602(Lcom/android/systemui/qs/external/CustomTile;Z)Z

    :cond_3
    if-eqz v0, :cond_4

    .line 1023
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {p0}, Landroid/service/quicksettings/IQSTileService;->semIsToggleButtonChecked()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_4
    return-object v1
.end method

.method public setToggleState(Z)V
    .locals 3

    .line 1094
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v1

    .line 1095
    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    if-eqz v2, :cond_4

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 1098
    :cond_0
    const-class v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 1099
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v2}, Lcom/android/systemui/knox/KnoxStateMonitor;->isBlockedEdmSettingsChange()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1100
    iget-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->access$1300(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 1101
    iget-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->access$1400(Lcom/android/systemui/qs/external/CustomTile;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "setToggleState blocked"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    return-void

    .line 1105
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->shouldBeUnlock(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1106
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isMethodSecure()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1107
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1108
    iget-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->access$1500(Lcom/android/systemui/qs/external/CustomTile;)Lcom/android/systemui/qs/QSHost;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->forceCollapsePanels()V

    .line 1109
    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;Ljava/lang/Boolean;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    .line 1112
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    return-void

    .line 1117
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->access$900(Lcom/android/systemui/qs/external/CustomTile;)Lcom/android/systemui/qs/external/TileServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileServiceManager;->isActiveTile()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1118
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->access$900(Lcom/android/systemui/qs/external/CustomTile;)Lcom/android/systemui/qs/external/TileServiceManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    .line 1119
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v0}, Landroid/service/quicksettings/IQSTileService;->onStartListening()V

    .line 1121
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->access$1600(Lcom/android/systemui/qs/external/CustomTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setToggleState state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v0, p1}, Landroid/service/quicksettings/IQSTileService;->semSetToggleButtonChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1127
    :catch_0
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    :cond_4
    :goto_0
    return-void
.end method
