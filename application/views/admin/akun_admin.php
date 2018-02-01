<main class="mdl-layout__content mdl-color--grey-100">
    <div class="mdl-card mdl-shadow--2dp employer-form" action="#">
        <div class="mdl-card__title">
            <h2>Pengaturan Akun</h2>
            <div class="mdl-card__subtitle">Isikan data dengan lengkap</div>
        </div>

        <div class="mdl-card__supporting-text">
            <form action="#" class="form">
                <div class="form__article">
                    <h3>Personal data</h3>

                    <div class="mdl-grid">
                        <div class="mdl-cell mdl-cell--6-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <input class="mdl-textfield__input" type="text" id="firstName" value="Luke"/>
                            <label class="mdl-textfield__label" for="firstName">Nama Depan</label>
                        </div>

                        <div class="mdl-cell mdl-cell--6-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <input class="mdl-textfield__input" type="text" id="secondName" value="Skywalker"/>
                            <label class="mdl-textfield__label" for="secondName">Nama Belakang</label>
                        </div>
                    </div>

                    <div class="mdl-grid">
                        <div class="mdl-cell mdl-cell--6-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <input class="mdl-textfield__input" type="text" id="birthday" value="25 May, 1977"/>
                            <label class="mdl-textfield__label" for="birthday">Tanggal lahir</label>
                        </div>

                        <div class="mdl-cell mdl-cell--6-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label getmdl-select">
                            <input class="mdl-textfield__input" value="Male" type="text" id="gender" readonly tabIndex="-1"/>

                            <label class="mdl-textfield__label" for="gender">Jenis kelamin</label>

                            <ul class="mdl-menu mdl-menu--bottom-left mdl-js-menu dark_dropdown" for="gender">
                                <li class="mdl-menu__item">Male</li>
                                <li class="mdl-menu__item">Female</li>
                            </ul>

                            <label for="gender">
                                <i class="mdl-icon-toggle__label material-icons">arrow_drop_down</i>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="form__article ">
                    <h3>Contacts</h3>
                    <div class="mdl-grid">
                        <div class="mdl-cell mdl-cell--6-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <input class="mdl-textfield__input" type="email" id="email" value="test@gmail.com"/>
                            <label class="mdl-textfield__label" for="firstName">Email</label>
                        </div>
                        <div class="mdl-cell mdl-cell--6-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <input class="mdl-textfield__input" type="email" id="website" value="test@gmail.com"/>
                            <label class="mdl-textfield__label" for="firstName">Website</label>
                        </div>
                    </div>

                    <div class="mdl-grid">
                        <div class="mdl-cell mdl-cell--9-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <input class="mdl-textfield__input" type="password" id="password" value="xxxxxxxxxx"/>
                            <label class="mdl-textfield__label" for="firstName">Perbarui Password</label>
                        </div>
                    </div>
                </div>
                <div class="form__action">
                    <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="isInfoReliable">
                        <input type="checkbox" id="isInfoReliable" class="mdl-checkbox__input" required/>
                        <span class="mdl-checkbox__label">Entered information is reliable</span>
                    </label>
                    <button id="submit_button" class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored">
                        Submit
                    </button>
                </div>
            </form>
        </div>
    </div>
</main>
