.class Lcom/android/systemui/qs/SecAutoTileManager$2;
.super Landroid/content/BroadcastReceiver;
.source "SecAutoTileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/SecAutoTileManager;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/AutoAddTracker$Builder;Lcom/android/systemui/qs/QSTileHost;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/ManagedProfileController;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/SecAutoTileManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/SecAutoTileManager;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager$2;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 117
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.systemui.qs.action.ACTION_UPDATE_CUSTOMTILE_VISIBILITY"

    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 122
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result p1

    const-string v0, "AutoTileManager"

    if-eqz p1, :cond_0

    const-string p0, "EmergencyMode is enabled : do not change tile list"

    .line 123
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "operation"

    .line 126
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "componentName"

    .line 127
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName"

    .line 128
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tileName"

    .line 129
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 130
    iget-object v4, p0, Lcom/android/systemui/qs/SecAutoTileManager$2;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    invoke-static {v4}, Lcom/android/systemui/qs/SecAutoTileManager;->access$000(Lcom/android/systemui/qs/SecAutoTileManager;)Lcom/android/systemui/qs/QSTileHost;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSTileHost;->getDefaultTileList()Ljava/lang/String;

    move-result-object v4

    .line 132
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TileVisibilityUpdate : ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    .line 135
    iget-object v0, p0, Lcom/android/systemui/qs/SecAutoTileManager$2;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    invoke-static {v0}, Lcom/android/systemui/qs/SecAutoTileManager;->access$400(Lcom/android/systemui/qs/SecAutoTileManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 136
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    const-string/jumbo v6, "sysui_removed_qs_tiles"

    .line 135
    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 137
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "add"

    .line 138
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_1

    invoke-static {v5}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 139
    :cond_1
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    iget-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager$2;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    invoke-static {p1}, Lcom/android/systemui/qs/SecAutoTileManager;->access$400(Lcom/android/systemui/qs/SecAutoTileManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 141
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const-string/jumbo v1, "sysui_qs_tiles"

    .line 140
    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-static {v5}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 143
    iget-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager$2;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    invoke-static {p1}, Lcom/android/systemui/qs/SecAutoTileManager;->access$000(Lcom/android/systemui/qs/SecAutoTileManager;)Lcom/android/systemui/qs/QSTileHost;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTileHost;->refreshTileList()V

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    const-string v0, "index"

    .line 145
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 146
    iget-object p2, p0, Lcom/android/systemui/qs/SecAutoTileManager$2;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    invoke-static {p2}, Lcom/android/systemui/qs/SecAutoTileManager;->access$000(Lcom/android/systemui/qs/SecAutoTileManager;)Lcom/android/systemui/qs/QSTileHost;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/qs/SecAutoTileManager$2;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    invoke-static {v0, p1, v3, v4}, Lcom/android/systemui/qs/SecAutoTileManager;->access$500(Lcom/android/systemui/qs/SecAutoTileManager;ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, v5, p1}, Lcom/android/systemui/qs/QSTileHost;->addTile(Landroid/content/ComponentName;I)V

    .line 148
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager$2;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    const/4 p1, 0x1

    invoke-static {v5}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/systemui/qs/SecAutoTileManager;->access$600(Lcom/android/systemui/qs/SecAutoTileManager;ZLjava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo p2, "remove"

    .line 149
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 150
    iget-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager$2;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    invoke-static {p1}, Lcom/android/systemui/qs/SecAutoTileManager;->access$000(Lcom/android/systemui/qs/SecAutoTileManager;)Lcom/android/systemui/qs/QSTileHost;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/android/systemui/qs/QSTileHost;->removeTile(Landroid/content/ComponentName;)V

    .line 151
    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager$2;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    const/4 p1, 0x0

    invoke-static {v5}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/systemui/qs/SecAutoTileManager;->access$600(Lcom/android/systemui/qs/SecAutoTileManager;ZLjava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
