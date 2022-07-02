.class Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$3;
.super Landroid/content/BroadcastReceiver;
.source "PeopleSpaceWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;


# direct methods
.method public static synthetic $r8$lambda$jAV-ly3yKaUBU5DVoXQt_1-4JqU(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$3;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$3;->lambda$onReceive$0(Landroid/content/Intent;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V
    .locals 0

    .line 1092
    iput-object p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$3;->this$0:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Landroid/content/Intent;)V
    .locals 0

    .line 1119
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$3;->this$0:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->updateWidgetsFromBroadcastInBackground(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1097
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.systemui.people.ACTION_WIDGET_SETTING_CHANGED"

    .line 1100
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "appWidgetId"

    const/4 v0, 0x0

    .line 1101
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    .line 1103
    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$3;->this$0:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getTileForExistingWidget(I)Landroid/app/people/PeopleSpaceTile;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1105
    invoke-virtual {v1}, Landroid/app/people/PeopleSpaceTile;->toBuilder()Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object v1

    .line 1106
    sget v2, Lcom/android/systemui/people/PeopleSpaceWidgetSettingUtils;->THEME_WHITE:I

    const-string/jumbo v3, "widget_theme"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "widget_transparency"

    .line 1107
    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    const-string/jumbo v4, "widget_with_night_mode"

    .line 1108
    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 1109
    invoke-virtual {v1, v2}, Landroid/app/people/PeopleSpaceTile$Builder;->setTheme(I)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object v3

    .line 1110
    invoke-virtual {v3, v0}, Landroid/app/people/PeopleSpaceTile$Builder;->setTransparency(I)Landroid/app/people/PeopleSpaceTile$Builder;

    move-result-object v3

    .line 1111
    invoke-virtual {v3, p2}, Landroid/app/people/PeopleSpaceTile$Builder;->setWithNightMode(Z)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 1112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update widgets: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " theme:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " transparency:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " withNightMode:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PeopleSpaceWidgetMgr"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$3;->this$0:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    invoke-virtual {v1}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->updateAppWidgetOptionsAndView(ILandroid/app/people/PeopleSpaceTile;)V

    goto :goto_0

    .line 1119
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$3;->this$0:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    invoke-static {p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->access$000(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$3$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$3;Landroid/content/Intent;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
