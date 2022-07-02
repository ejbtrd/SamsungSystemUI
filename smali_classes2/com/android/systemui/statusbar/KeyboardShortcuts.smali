.class public final Lcom/android/systemui/statusbar/KeyboardShortcuts;
.super Ljava/lang/Object;
.source "KeyboardShortcuts.java"


# static fields
.field private static mShowTime:J

.field private static sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mApplicationItemsComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/KeyboardShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDialogCloseListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mHandler:Landroid/os/Handler;

.field private mKeyboardShortcutsDialog:Landroid/app/Dialog;

.field private mKshPresenter:Lcom/android/systemui/statusbar/KshPresenter;

.field private final mModifierDrawables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mModifierList:[I

.field private final mModifierNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/IPackageManager;

.field private final mSpecialCharacterDrawables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpecialCharacterNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 90
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierNames:Landroid/util/SparseArray;

    .line 91
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    .line 92
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierDrawables:Landroid/util/SparseArray;

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 95
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierList:[I

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mHandler:Landroid/os/Handler;

    .line 107
    new-instance v0, Lcom/android/systemui/statusbar/KeyboardShortcuts$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts$1;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mDialogCloseListener:Landroid/content/DialogInterface$OnClickListener;

    .line 113
    new-instance v0, Lcom/android/systemui/statusbar/KeyboardShortcuts$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts$2;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mApplicationItemsComparator:Ljava/util/Comparator;

    .line 143
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x1030223

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 145
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 146
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->loadResources(Landroid/content/Context;)V

    .line 149
    new-instance v0, Lcom/android/systemui/statusbar/KshPresenter;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/KshPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKshPresenter:Lcom/android/systemui/statusbar/KshPresenter;

    return-void

    nop

    :array_0
    .array-data 4
        0x10000
        0x1000
        0x2
        0x1
        0x4
        0x8
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismissKeyboardShortcuts()V

    return-void
.end method

.method public static dismiss()V
    .locals 3

    .line 187
    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const/16 v2, 0x1f4

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 191
    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismissKeyboardShortcuts()V

    const/4 v1, 0x0

    .line 192
    sput-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    .line 194
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dismissKeyboardShortcuts()V
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKshPresenter:Lcom/android/systemui/statusbar/KshPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KshPresenter;->dismissKeyboardShortcuts()V

    const/4 v0, 0x0

    .line 419
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKshPresenter:Lcom/android/systemui/statusbar/KshPresenter;

    return-void
.end method

.method private static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/KeyboardShortcuts;
    .locals 1

    .line 154
    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    .line 157
    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    return-object p0
.end method

.method private static isShowing()Z
    .locals 1

    .line 198
    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadResources(Landroid/content/Context;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 203
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$string;->keyboard_key_home:I

    .line 204
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    .line 203
    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 205
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$string;->keyboard_key_back:I

    .line 206
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    .line 205
    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 207
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$string;->keyboard_key_dpad_up:I

    .line 208
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x13

    .line 207
    invoke-virtual {v2, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 209
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$string;->keyboard_key_dpad_down:I

    .line 210
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x14

    .line 209
    invoke-virtual {v2, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 211
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$string;->keyboard_key_dpad_left:I

    .line 212
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x15

    .line 211
    invoke-virtual {v2, v7, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 213
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$string;->keyboard_key_dpad_right:I

    .line 214
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v8, 0x16

    .line 213
    invoke-virtual {v2, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 215
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$string;->keyboard_key_dpad_center:I

    .line 216
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0x17

    .line 215
    invoke-virtual {v2, v9, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 217
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v3, 0x38

    const-string v9, "."

    invoke-virtual {v2, v3, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 218
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$string;->keyboard_key_tab:I

    .line 219
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v10, 0x3d

    .line 218
    invoke-virtual {v2, v10, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 220
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$string;->keyboard_key_space:I

    .line 221
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v10, 0x3e

    .line 220
    invoke-virtual {v2, v10, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 222
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v3, Lcom/android/systemui/R$string;->keyboard_key_enter:I

    .line 223
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x42

    .line 222
    invoke-virtual {v2, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 224
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v10, Lcom/android/systemui/R$string;->keyboard_key_backspace:I

    .line 225
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v12, 0x43

    .line 224
    invoke-virtual {v2, v12, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 226
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v10, Lcom/android/systemui/R$string;->keyboard_key_media_play_pause:I

    .line 227
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v13, 0x55

    .line 226
    invoke-virtual {v2, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 228
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v10, Lcom/android/systemui/R$string;->keyboard_key_media_stop:I

    .line 229
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v13, 0x56

    .line 228
    invoke-virtual {v2, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 230
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v10, Lcom/android/systemui/R$string;->keyboard_key_media_next:I

    .line 231
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v13, 0x57

    .line 230
    invoke-virtual {v2, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 232
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v10, Lcom/android/systemui/R$string;->keyboard_key_media_previous:I

    .line 233
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v13, 0x58

    .line 232
    invoke-virtual {v2, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 234
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v10, Lcom/android/systemui/R$string;->keyboard_key_media_rewind:I

    .line 235
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v13, 0x59

    .line 234
    invoke-virtual {v2, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 236
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v10, Lcom/android/systemui/R$string;->keyboard_key_media_fast_forward:I

    .line 237
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v13, 0x5a

    .line 236
    invoke-virtual {v2, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 238
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v10, Lcom/android/systemui/R$string;->keyboard_key_page_up:I

    .line 239
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v13, 0x5c

    .line 238
    invoke-virtual {v2, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 240
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v10, Lcom/android/systemui/R$string;->keyboard_key_page_down:I

    .line 241
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v13, 0x5d

    .line 240
    invoke-virtual {v2, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 242
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v10, Lcom/android/systemui/R$string;->keyboard_key_button_template:I

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "A"

    const/16 v16, 0x0

    aput-object v15, v14, v16

    .line 243
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x60

    .line 242
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 244
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "B"

    aput-object v15, v14, v16

    .line 245
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x61

    .line 244
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 246
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "C"

    aput-object v15, v14, v16

    .line 247
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x62

    .line 246
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 248
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "X"

    aput-object v15, v14, v16

    .line 249
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x63

    .line 248
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 250
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "Y"

    aput-object v15, v14, v16

    .line 251
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x64

    .line 250
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 252
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "Z"

    aput-object v15, v14, v16

    .line 253
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x65

    .line 252
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 254
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "L1"

    aput-object v15, v14, v16

    .line 255
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x66

    .line 254
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 256
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "R1"

    aput-object v15, v14, v16

    .line 257
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x67

    .line 256
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 258
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "L2"

    aput-object v15, v14, v16

    .line 259
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x68

    .line 258
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 260
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "R2"

    aput-object v15, v14, v16

    .line 261
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x69

    .line 260
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 262
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "Start"

    aput-object v15, v14, v16

    .line 263
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x6c

    .line 262
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 264
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "Select"

    aput-object v15, v14, v16

    .line 265
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x6d

    .line 264
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 266
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "Mode"

    aput-object v15, v14, v16

    .line 267
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/16 v14, 0x6e

    .line 266
    invoke-virtual {v2, v14, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 268
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v10, Lcom/android/systemui/R$string;->keyboard_key_forward_del:I

    .line 269
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v14, 0x70

    .line 268
    invoke-virtual {v2, v14, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 270
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v10, 0x6f

    const-string v14, "Esc"

    invoke-virtual {v2, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 271
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v10, 0x78

    const-string v14, "SysRq"

    invoke-virtual {v2, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 272
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v10, 0x79

    const-string v14, "Break"

    invoke-virtual {v2, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 273
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v10, 0x74

    const-string v14, "Scroll Lock"

    invoke-virtual {v2, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 274
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v10, Lcom/android/systemui/R$string;->keyboard_key_move_home:I

    .line 275
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v14, 0x7a

    .line 274
    invoke-virtual {v2, v14, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 276
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v10, Lcom/android/systemui/R$string;->keyboard_key_move_end:I

    .line 277
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v14, 0x7b

    .line 276
    invoke-virtual {v2, v14, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 278
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v10, Lcom/android/systemui/R$string;->keyboard_key_insert:I

    .line 279
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v14, 0x7c

    .line 278
    invoke-virtual {v2, v14, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 280
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v10, 0x83

    const-string v14, "F1"

    invoke-virtual {v2, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 281
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v10, 0x84

    const-string v14, "F2"

    invoke-virtual {v2, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 282
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v10, 0x85

    const-string v14, "F3"

    invoke-virtual {v2, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 283
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v10, 0x86

    const-string v14, "F4"

    invoke-virtual {v2, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 284
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v10, 0x87

    const-string v14, "F5"

    invoke-virtual {v2, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 285
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v10, 0x88

    const-string v14, "F6"

    invoke-virtual {v2, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 286
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v10, 0x89

    const-string v14, "F7"

    invoke-virtual {v2, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 287
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v10, 0x8a

    const-string v14, "F8"

    invoke-virtual {v2, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 288
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v10, 0x8b

    const-string v14, "F9"

    invoke-virtual {v2, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 289
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v10, 0x8c

    const-string v14, "F10"

    invoke-virtual {v2, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 290
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v10, 0x8d

    const-string v14, "F11"

    invoke-virtual {v2, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 291
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v10, 0x8e

    const-string v14, "F12"

    invoke-virtual {v2, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 292
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v10, Lcom/android/systemui/R$string;->keyboard_key_num_lock:I

    .line 293
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v14, 0x8f

    .line 292
    invoke-virtual {v2, v14, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 294
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    sget v10, Lcom/android/systemui/R$string;->keyboard_key_numpad_template:I

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "0"

    aput-object v15, v14, v16

    .line 295
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x90

    .line 294
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 296
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "1"

    aput-object v15, v14, v16

    .line 297
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x91

    .line 296
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 298
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "2"

    aput-object v15, v14, v16

    .line 299
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x92

    .line 298
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 300
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "3"

    aput-object v15, v14, v16

    .line 301
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x93

    .line 300
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 302
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "4"

    aput-object v15, v14, v16

    .line 303
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x94

    .line 302
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 304
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "5"

    aput-object v15, v14, v16

    .line 305
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x95

    .line 304
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 306
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "6"

    aput-object v15, v14, v16

    .line 307
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x96

    .line 306
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 308
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "7"

    aput-object v15, v14, v16

    .line 309
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x97

    .line 308
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 310
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "8"

    aput-object v15, v14, v16

    .line 311
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x98

    .line 310
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 312
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "9"

    aput-object v15, v14, v16

    .line 313
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x99

    .line 312
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 314
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "/"

    aput-object v15, v14, v16

    .line 315
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x9a

    .line 314
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 316
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "*"

    aput-object v15, v14, v16

    .line 317
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x9b

    .line 316
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 318
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "-"

    aput-object v15, v14, v16

    .line 319
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x9c

    .line 318
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 320
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "+"

    aput-object v15, v14, v16

    .line 321
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x9d

    .line 320
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 322
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v14, v13, [Ljava/lang/Object;

    aput-object v9, v14, v16

    .line 323
    invoke-virtual {v1, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/16 v14, 0x9e

    .line 322
    invoke-virtual {v2, v14, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 324
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v9, v13, [Ljava/lang/Object;

    const-string v14, ","

    aput-object v14, v9, v16

    .line 325
    invoke-virtual {v1, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/16 v14, 0x9f

    .line 324
    invoke-virtual {v2, v14, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 326
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v9, v13, [Ljava/lang/Object;

    .line 328
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v16

    .line 327
    invoke-virtual {v1, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0xa0

    .line 326
    invoke-virtual {v2, v9, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 329
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v3, v13, [Ljava/lang/Object;

    const-string v9, "="

    aput-object v9, v3, v16

    .line 330
    invoke-virtual {v1, v10, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0xa1

    .line 329
    invoke-virtual {v2, v9, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 331
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v3, v13, [Ljava/lang/Object;

    const-string v9, "("

    aput-object v9, v3, v16

    .line 332
    invoke-virtual {v1, v10, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0xa2

    .line 331
    invoke-virtual {v2, v9, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 333
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v3, v13, [Ljava/lang/Object;

    const-string v9, ")"

    aput-object v9, v3, v16

    .line 334
    invoke-virtual {v1, v10, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0xa3

    .line 333
    invoke-virtual {v2, v9, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 335
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v3, 0xd3

    const-string/jumbo v9, "\u534a\u89d2/\u5168\u89d2"

    invoke-virtual {v2, v3, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 336
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v3, 0xd4

    const-string/jumbo v9, "\u82f1\u6570"

    invoke-virtual {v2, v3, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 337
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v3, 0xd5

    const-string/jumbo v9, "\u7121\u5909\u63db"

    invoke-virtual {v2, v3, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 338
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v3, 0xd6

    const-string/jumbo v9, "\u5909\u63db"

    invoke-virtual {v2, v3, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 339
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/16 v3, 0xd7

    const-string/jumbo v9, "\u304b\u306a"

    invoke-virtual {v2, v3, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 341
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierNames:Landroid/util/SparseArray;

    const/high16 v3, 0x10000

    const-string v9, "Meta"

    invoke-virtual {v2, v3, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 342
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierNames:Landroid/util/SparseArray;

    const/16 v9, 0x1000

    const-string v10, "Ctrl"

    invoke-virtual {v2, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 343
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierNames:Landroid/util/SparseArray;

    const/4 v9, 0x2

    const-string v10, "Alt"

    invoke-virtual {v2, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 344
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierNames:Landroid/util/SparseArray;

    const-string v9, "Shift"

    invoke-virtual {v2, v13, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 345
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierNames:Landroid/util/SparseArray;

    const-string v9, "Sym"

    invoke-virtual {v2, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 346
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierNames:Landroid/util/SparseArray;

    const/16 v4, 0x8

    const-string v9, "Fn"

    invoke-virtual {v2, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 348
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    sget v4, Lcom/android/systemui/R$drawable;->ic_ksh_key_backspace:I

    .line 349
    invoke-virtual {v1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 348
    invoke-virtual {v2, v12, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 350
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    sget v4, Lcom/android/systemui/R$drawable;->ic_ksh_key_enter:I

    .line 351
    invoke-virtual {v1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 350
    invoke-virtual {v2, v11, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 352
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    sget v4, Lcom/android/systemui/R$drawable;->ic_ksh_key_up:I

    .line 353
    invoke-virtual {v1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 352
    invoke-virtual {v2, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 354
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    sget v4, Lcom/android/systemui/R$drawable;->ic_ksh_key_right:I

    .line 355
    invoke-virtual {v1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 354
    invoke-virtual {v2, v8, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 356
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    sget v4, Lcom/android/systemui/R$drawable;->ic_ksh_key_down:I

    .line 357
    invoke-virtual {v1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 356
    invoke-virtual {v2, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 358
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    sget v4, Lcom/android/systemui/R$drawable;->ic_ksh_key_left:I

    .line 359
    invoke-virtual {v1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 358
    invoke-virtual {v2, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 361
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierDrawables:Landroid/util/SparseArray;

    sget v2, Lcom/android/systemui/R$drawable;->ic_ksh_key_meta:I

    .line 362
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 361
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static show(Landroid/content/Context;I)V
    .locals 6

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 162
    sget-wide v2, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mShowTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    .line 165
    :cond_0
    sput-wide v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mShowTime:J

    const/16 v0, 0x1f4

    .line 166
    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 168
    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 170
    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V

    .line 172
    :cond_1
    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/KeyboardShortcuts;

    move-result-object p0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->showKeyboardShortcuts(I)V

    .line 173
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private showKeyboardShortcuts(I)V
    .locals 0

    .line 397
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKshPresenter:Lcom/android/systemui/statusbar/KshPresenter;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KshPresenter;->showKeyboardShortcuts(I)V

    return-void
.end method

.method public static toggle(Landroid/content/Context;I)V
    .locals 2

    .line 177
    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_0
    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V

    goto :goto_0

    .line 181
    :cond_0
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->show(Landroid/content/Context;I)V

    .line 183
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
