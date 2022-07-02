.class final Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$onBindViewHolder$1;
.super Ljava/lang/Object;
.source "CustomAppAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->onBindViewHolder(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $index:I

.field final synthetic this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$onBindViewHolder$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    iput p2, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$onBindViewHolder$1;->$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 98
    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$onBindViewHolder$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    invoke-static {p1}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->access$getOnAppSelected$p(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$onBindViewHolder$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    invoke-static {v0}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->access$getListOfServices$p(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$onBindViewHolder$1;->$index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/ControlsServiceInfo;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/DefaultAppInfo;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    if-eqz p1, :cond_1

    .line 101
    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$onBindViewHolder$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    invoke-static {p1}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->access$getSaLogger$p(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;)Lcom/android/systemui/controls/ui/util/SALogger;

    move-result-object p1

    .line 102
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$onBindViewHolder$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    invoke-static {p0}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->access$isOOBE$p(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$TapAppList;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Event$TapAppList;

    goto :goto_0

    .line 103
    :cond_0
    sget-object p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$TapAppListOnManageApps;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Event$TapAppListOnManageApps;

    .line 101
    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    :cond_1
    return-void
.end method
