.class Lcom/android/systemui/qs/SecAutoTileManager$5;
.super Ljava/lang/Object;
.source "SecAutoTileManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/SecAutoTileManager;
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

    .line 296
    iput-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager$5;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagedProfileChanged()V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/android/systemui/qs/SecAutoTileManager$5;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    invoke-static {v0}, Lcom/android/systemui/qs/SecAutoTileManager;->access$700(Lcom/android/systemui/qs/SecAutoTileManager;)Lcom/android/systemui/qs/AutoAddTracker;

    move-result-object v0

    const-string v1, "WorkMode"

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/AutoAddTracker;->isAdded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecAutoTileManager$5;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    invoke-static {v0}, Lcom/android/systemui/qs/SecAutoTileManager;->access$800(Lcom/android/systemui/qs/SecAutoTileManager;)Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->hasActiveProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/android/systemui/qs/SecAutoTileManager$5;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    invoke-static {v0}, Lcom/android/systemui/qs/SecAutoTileManager;->access$000(Lcom/android/systemui/qs/SecAutoTileManager;)Lcom/android/systemui/qs/QSTileHost;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTileHost;->addTile(Ljava/lang/String;)V

    .line 302
    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager$5;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    invoke-static {p0}, Lcom/android/systemui/qs/SecAutoTileManager;->access$700(Lcom/android/systemui/qs/SecAutoTileManager;)Lcom/android/systemui/qs/AutoAddTracker;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/AutoAddTracker;->setTileAdded(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onManagedProfileRemoved()V
    .locals 0

    return-void
.end method
