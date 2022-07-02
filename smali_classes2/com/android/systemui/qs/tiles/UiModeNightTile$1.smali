.class Lcom/android/systemui/qs/tiles/UiModeNightTile$1;
.super Ljava/lang/Object;
.source "UiModeNightTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/UiModeNightTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

.field final synthetic val$state:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/UiModeNightTile;Lcom/android/systemui/plugins/qs/QSTile$BooleanState;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$1;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$1;->val$state:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$1;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->access$002(Lcom/android/systemui/qs/tiles/UiModeNightTile;Z)Z

    .line 196
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$1;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$1;->val$state:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->access$100(Lcom/android/systemui/qs/tiles/UiModeNightTile;Ljava/lang/Object;)V

    return-void
.end method
