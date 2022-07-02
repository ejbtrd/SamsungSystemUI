.class public Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;
.super Ljava/lang/Object;
.source "UiModeNightTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/UiModeNightTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UiModeDetailAdapter"
.end annotation


# instance fields
.field private mDetailSummary:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/qs/tiles/UiModeNightTile;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDetailSummary()Ljava/lang/String;
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->access$1300(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->sec_dark_mode_tile_desc:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->getNightThemeTurnOnType()Ljava/lang/String;

    move-result-object p0

    .line 330
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getNightThemeTurnOnType()Ljava/lang/String;
    .locals 10

    .line 337
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->access$1400(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_night_theme"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 339
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->access$1500(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "display_night_theme_scheduled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    if-eqz v0, :cond_3

    if-nez v3, :cond_3

    .line 347
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->access$1700(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/android/systemui/R$string;->sec_dark_mode_tile_when_to_turn_on:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    .line 348
    invoke-static {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->access$1600(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Landroid/content/Context;

    move-result-object p0

    sget v4, Lcom/android/systemui/R$string;->sec_dark_mode_tile_when_to_turn_on_always:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    .line 347
    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 351
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->access$1800(Lcom/android/systemui/qs/tiles/UiModeNightTile;)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 353
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->access$2000(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/android/systemui/R$string;->sec_dark_mode_tile_when_to_turn_on:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    .line 354
    invoke-static {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->access$1900(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Landroid/content/Context;

    move-result-object p0

    sget v4, Lcom/android/systemui/R$string;->sec_dark_mode_auto_title:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    .line 353
    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 356
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->access$2100(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v3, 0x474

    const-string v5, "display_night_theme_on_time"

    invoke-static {v0, v5, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 358
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->access$2200(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v5, 0x1a4

    const-string v7, "display_night_theme_off_time"

    invoke-static {v0, v7, v5, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-ltz v0, :cond_5

    .line 361
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->access$2400(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v7, Lcom/android/systemui/R$string;->sec_dark_mode_off_time_next_day_summary_format:I

    new-array v8, v1, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    invoke-static {v9, v5, v6}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->access$2300(Lcom/android/systemui/qs/tiles/UiModeNightTile;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v2

    invoke-virtual {v0, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 362
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    invoke-static {v0, v5, v6}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->access$2300(Lcom/android/systemui/qs/tiles/UiModeNightTile;J)Ljava/lang/String;

    move-result-object v0

    .line 363
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->access$2500(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$string;->sec_dark_mode_tile_when_to_turn_on_custom:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    invoke-static {p0, v3, v4}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->access$2300(Lcom/android/systemui/qs/tiles/UiModeNightTile;J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v7, v2

    aput-object v0, v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 290
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->access$400(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$layout;->sec_qs_detail_text:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 291
    sget p2, Lcom/android/systemui/R$id;->message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->mDetailSummary:Landroid/widget/TextView;

    .line 292
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->getDetailSummary()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6aa

    return p0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->getLongClickIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 280
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->access$200(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->sec_dark_mode_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->access$300(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public setToggleState(Z)V
    .locals 3

    .line 303
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->access$500(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->access$600(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Tobble is blocked when device does not support dark mode"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->access$700(Lcom/android/systemui/qs/tiles/UiModeNightTile;)V

    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->access$800(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setToggleState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->access$900(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->access$1000(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Landroid/app/UiModeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/UiModeManager;->setNightModeActivated(Z)Z

    if-eqz p1, :cond_3

    .line 312
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->access$1100(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->access$1200(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->sec_dark_mode_scheduled_toast:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->access$1000(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Landroid/app/UiModeManager;

    move-result-object v0

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/UiModeManager;->setNightMode(I)V

    .line 318
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->mDetailSummary:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->getDetailSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$UiModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    return-void
.end method
