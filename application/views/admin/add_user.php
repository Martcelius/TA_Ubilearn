<main class="mdl-layout__content">
    <div class="mdl-layout mdl-js-layout mdl-layout--fixed-drawer mdl-layout--fixed-header">
        <main class="mdl-layout__content mdl-color--grey-100">
            <div class="mdl-card mdl-shadow--2dp employer-form" action="#">
                <div class="mdl-card__title">
                    <h2>Tambah User</h2>
                    <div class="mdl-card__subtitle">Masukan Detail User</div>
                </div>

                <div class="mdl-card__supporting-text">
                    <form action="#" class="form">
                        <div class="form__article">
                            <div class="mdl-grid">
                                <div class="mdl-cell mdl-cell--6-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                    <input class="mdl-textfield__input" type="text" id="firstName" placeholder="Nama Depan"/>
                                    <label class="mdl-textfield__label" for="firstName">Nama Depan</label>
                                </div>

                                <div class="mdl-cell mdl-cell--6-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                    <input class="mdl-textfield__input" type="text" id="secondName" placeholder="Nama Belakang"/>
                                    <label class="mdl-textfield__label" for="secondName">Nama Belakang</label>
                                </div>
                            </div>

                            <div class="mdl-grid">
                                <div class="mdl-cell mdl-cell--6-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                    <input class="mdl-textfield__input" type="date" id="birthday" placeholder="Tanggal lahir"/>
                                    <label class="mdl-textfield__label" for="birthday">Tanggal Lahir</label>
                                </div>

                                <div class="mdl-cell mdl-cell--6-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label getmdl-select">
                                    <input class="mdl-textfield__input" placeholder="Jenis Kelamin" type="text" id="gender" readonly tabIndex="-1"/>

                                    <label class="mdl-textfield__label" for="gender">Jenis Kelamin</label>

                                    <ul class="mdl-menu mdl-menu--bottom-left mdl-js-menu dark_dropdown" for="gender">
                                        <li class="mdl-menu__item">Pria</li>
                                        <li class="mdl-menu__item">Wanita</li>
                                    </ul>

                                    <label for="gender">
                                        <i class="mdl-icon-toggle__label material-icons">arrow_drop_down</i>
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="form__article">
                            <div class="mdl-grid">
                                <div class="mdl-cell mdl-cell--6-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                    <input class="mdl-textfield__input" type="text" placeholder="Username" id="username"/>
                                    <label class="mdl-textfield__label" for="username">Username</label>
                                </div>
                                <div class="mdl-cell mdl-cell--6-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                    <input class="mdl-textfield__input" type="decimal" min="0" max="4" placeholder="IPK" id="gpa"/>
                                    <label class="mdl-textfield__label" for="gpa">IPK</label>
                                </div>
                            </div>

                            <span>Role</span>

                            <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="partition-fulltime">
                                <input type="radio" id="partition-fulltime" class="mdl-radio__button" name="employment" value="1" checked/>
                                <span class="mdl-radio__label">Admin</span>
                            </label>
                            <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="partition-partTime">
                                <input type="radio" id="partition-partTime" class="mdl-radio__button" name="employment" value="2"/>
                                <span class="mdl-radio__label">Siswa</span>
                            </label>
                            <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="partition-remote">
                                <input type="radio" id="partition-remote" class="mdl-radio__button" name="employment" value="3"/>
                                <span class="mdl-radio__label">Instruktur</span>
                            </label>
                        </div>

                        <div class="form__action">
                            <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="isInfoReliable">
                                <input type="checkbox" id="isInfoReliable" class="mdl-checkbox__input" required/>
                                <span class="mdl-checkbox__label" style="font-size: 10px">Dengan mencentang kolom disamping saya menyatakan bahwa informasi yang saya isi adalah benar.</span>
                            </label>
                            <button id="submit_button" class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored">
                                Submit
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </main>
    </div>
</main>