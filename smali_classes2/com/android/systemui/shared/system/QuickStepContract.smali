.class public Lcom/android/systemui/shared/system/QuickStepContract;
.super Ljava/lang/Object;
.source "QuickStepContract.java"


# static fields
.field public static SYSUI_FORCE_SET_BACK_GESTURE_BY_SPLUGIN:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getQuickStepTouchSlopPx(Landroid/content/Context;)F
    .locals 1

    .line 209
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr p0, v0

    return p0
.end method

.method public static getSystemUiStateString(I)Ljava/lang/String;
    .locals 3

    .line 165
    new-instance v0, Ljava/util/StringJoiner;

    const-string/jumbo v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    and-int/lit8 v1, p0, 0x1

    const-string v2, ""

    if-eqz v1, :cond_0

    const-string/jumbo v1, "screen_pinned"

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 166
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_1

    const-string/jumbo v1, "overview_disabled"

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 167
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_2

    const-string v1, "home_disabled"

    goto :goto_2

    :cond_2
    move-object v1, v2

    .line 168
    :goto_2
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_3

    const-string/jumbo v1, "search_disabled"

    goto :goto_3

    :cond_3
    move-object v1, v2

    .line 169
    :goto_3
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_4

    const-string/jumbo v1, "navbar_hidden"

    goto :goto_4

    :cond_4
    move-object v1, v2

    .line 170
    :goto_4
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_5

    const-string/jumbo v1, "notif_visible"

    goto :goto_5

    :cond_5
    move-object v1, v2

    .line 171
    :goto_5
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_6

    const-string/jumbo v1, "qs_visible"

    goto :goto_6

    :cond_6
    move-object v1, v2

    .line 172
    :goto_6
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_7

    const-string v1, "keygrd_visible"

    goto :goto_7

    :cond_7
    move-object v1, v2

    .line 173
    :goto_7
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_8

    const-string v1, "keygrd_occluded"

    goto :goto_8

    :cond_8
    move-object v1, v2

    .line 174
    :goto_8
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_9

    const-string v1, "bouncer_visible"

    goto :goto_9

    :cond_9
    move-object v1, v2

    .line 176
    :goto_9
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_a

    const-string v1, "global_actions"

    goto :goto_a

    :cond_a
    move-object v1, v2

    .line 177
    :goto_a
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_b

    const-string v1, "a11y_click"

    goto :goto_b

    :cond_b
    move-object v1, v2

    .line 178
    :goto_b
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_c

    const-string v1, "a11y_long_click"

    goto :goto_c

    :cond_c
    move-object v1, v2

    .line 179
    :goto_c
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_d

    const-string/jumbo v1, "tracing"

    goto :goto_d

    :cond_d
    move-object v1, v2

    .line 180
    :goto_d
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_e

    const-string v1, "asst_gesture_constrain"

    goto :goto_e

    :cond_e
    move-object v1, v2

    .line 181
    :goto_e
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_f

    const-string v1, "bubbles_expanded"

    goto :goto_f

    :cond_f
    move-object v1, v2

    .line 183
    :goto_f
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/high16 v1, 0x10000

    and-int/2addr v1, p0

    if-eqz v1, :cond_10

    const-string/jumbo v1, "one_handed_active"

    goto :goto_10

    :cond_10
    move-object v1, v2

    .line 184
    :goto_10
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/high16 v1, 0x20000

    and-int/2addr v1, p0

    if-eqz v1, :cond_11

    const-string v1, "allow_gesture"

    goto :goto_11

    :cond_11
    move-object v1, v2

    .line 185
    :goto_11
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/high16 v1, 0x40000

    and-int/2addr v1, p0

    if-eqz v1, :cond_12

    const-string v1, "ime_visible"

    goto :goto_12

    :cond_12
    move-object v1, v2

    .line 187
    :goto_12
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/high16 v1, 0x80000

    and-int/2addr v1, p0

    if-eqz v1, :cond_13

    const-string/jumbo v1, "magnification_overlap"

    goto :goto_13

    :cond_13
    move-object v1, v2

    .line 188
    :goto_13
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/high16 v1, 0x100000

    and-int/2addr v1, p0

    if-eqz v1, :cond_14

    const-string v1, "game_tools_showing"

    goto :goto_14

    :cond_14
    move-object v1, v2

    .line 190
    :goto_14
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/high16 v1, 0x200000

    and-int/2addr v1, p0

    if-eqz v1, :cond_15

    const-string/jumbo v1, "requested_recent_key"

    goto :goto_15

    :cond_15
    move-object v1, v2

    .line 191
    :goto_15
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/high16 v1, 0x400000

    and-int/2addr v1, p0

    if-eqz v1, :cond_16

    const-string/jumbo v1, "requested_home_key"

    goto :goto_16

    :cond_16
    move-object v1, v2

    .line 192
    :goto_16
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/high16 v1, 0x800000

    and-int/2addr v1, p0

    if-eqz v1, :cond_17

    const-string/jumbo v1, "navbar_gone"

    goto :goto_17

    :cond_17
    move-object v1, v2

    .line 193
    :goto_17
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/high16 v1, 0x1000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_18

    const-string v1, "back_disabled"

    goto :goto_18

    :cond_18
    move-object v1, v2

    .line 194
    :goto_18
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/high16 v1, 0x2000000

    and-int/2addr p0, v1

    if-eqz p0, :cond_19

    const-string v2, "knox_hard_key_intent"

    .line 195
    :cond_19
    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 197
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isAssistantGestureDisabled(I)Z
    .locals 2

    const/high16 v0, 0x20000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    and-int/lit8 p0, p0, -0x3

    :cond_0
    and-int/lit16 v0, p0, 0xc0b

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    and-int/lit8 p0, p0, 0x40

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isBackGestureDisabled(I)Z
    .locals 2

    and-int/lit8 v0, p0, 0x8

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const v0, 0x8000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x20000

    and-int/2addr v0, p0

    if-nez v0, :cond_1

    .line 273
    sget-boolean v0, Lcom/android/systemui/shared/system/QuickStepContract;->SYSUI_FORCE_SET_BACK_GESTURE_BY_SPLUGIN:Z

    if-eqz v0, :cond_2

    :cond_1
    and-int/lit8 p0, p0, -0x3

    :cond_2
    const v0, 0x800002

    and-int/2addr p0, v0

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method public static isGesturalMode(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isLegacyMode(I)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSwipeUpMode(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
